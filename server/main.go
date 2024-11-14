package main

/*
#cgo CFLAGS: -g -Wall
#cgo LDFLAGS: -L. -lequix
#include <equix.h>
*/
import "C"

import (
	"encoding/hex"
	"log"
	"net"
	"strings"
	"unsafe"
)

const (
	address       = "localhost:8080"
	startPointLen = 32
)

func main() {
	// Allocate an Equi-X context for solving
	ctx := C.equix_alloc(C.EQUIX_CTX_SOLVE)
	if ctx == nil {
		log.Println("Failed to allocate Equi-X context")
		return
	}

	listener, err := net.Listen("tcp", address)
	if err != nil {
		log.Println("Error starting TCP server:", err)
		return
	}
	defer listener.Close()

	log.Println("Server listening on", address)

	for {
		conn, err := listener.Accept()
		if err != nil {
			log.Println("Error accepting connection:", err)
			continue
		}
		go handleConnection(conn, ctx)
	}
}

func handleConnection(conn net.Conn, ctx *C.equix_ctx) {
	defer conn.Close()

	startPoint := generateStartPoint()
	log.Println("Generated start point:", startPoint)

	_, err := conn.Write([]byte(startPoint + "\n"))
	if err != nil {
		log.Println("Error sending start point:", err)
		return
	}

	buffer := make([]byte, 1024)
	n, err := conn.Read(buffer)
	if err != nil {
		log.Println("Error reading from connection:", err)
		return
	}

	nonce := strings.TrimSpace(string(buffer[:n]))

	if verifyProofOfWork(ctx, startPoint, nonce) {
		log.Println("Valid proof of work received")
		_, err := conn.Write([]byte("Valid proof of work\n"))
		if err != nil {
			return
		}
	} else {
		log.Println("Invalid proof of work received")
		_, err := conn.Write([]byte("Invalid proof of work\n"))
		if err != nil {
			return
		}
	}
}

func generateStartPoint() string {
	startPoint := make([]byte, startPointLen)
	for i := range startPoint {
		startPoint[i] = byte(i % 256)
	}
	return hex.EncodeToString(startPoint)
}

func verifyProofOfWork(ctx *C.equix_ctx, startPoint, nonce string) bool {
	startPointBytes, _ := hex.DecodeString(startPoint)
	nonceBytes, _ := hex.DecodeString(nonce)

	var solution C.equix_solution
	for i := range solution.idx {
		solution.idx[i] = C.equix_idx(nonceBytes[i*2]) | C.equix_idx(nonceBytes[i*2+1])<<8
	}

	result := C.equix_verify(ctx, unsafe.Pointer(&startPointBytes[0]), C.size_t(len(startPointBytes)), &solution)
	return result == C.EQUIX_OK
}
