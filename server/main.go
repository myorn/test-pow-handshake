package main

import (
	"crypto"
	"crypto/sha256"
	"crypto/rand"
	"encoding/hex"
	"log"
	"net"
	"strings"
	"time"
)

const (
	address       = "localhost:8080"
	difficulty    = 4 // Number of leading zeros required in the hash
	startPointLen = 1
)

func main() {
	listener, err := net.Listen("tcp", address)
	if err != nil {
		log.Println("Error starting TCP server:", err)

		return
	}

	defer func() {
		err := listener.Close()
		if err != nil {

		}
	}()

	log.Println("Server listening on", address)

	for {
		conn, err := listener.Accept()
		if err != nil {
			log.Println("Error accepting connection:", err)

			continue
		}

		go handleConnection(conn)
	}
}

func handleConnection(conn net.Conn) {
	defer func() {
		err := conn.Close()
		if err != nil {
			log.Fatalf("Error closing connection: %v", err)
		}
	}()

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

	if verifyProofOfWork(startPoint, nonce) {
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
	bytes := make([]byte, startPointLen)
	for i := range bytes {
		bytes[i] = byte(crypto.)
	}

	return hex.EncodeToString(bytes)
}

func verifyProofOfWork(startPoint, nonce string) bool {
	hash := sha256.Sum256([]byte(startPoint + nonce))

	hashStr := hex.EncodeToString(hash[:])

	return strings.HasPrefix(hashStr, strings.Repeat("0", difficulty))
}