# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/myorn/go/src/equix/equix

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/myorn/go/src/equix/equix/build

# Include any dependencies generated for this target.
include CMakeFiles/equix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/equix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/equix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/equix.dir/flags.make

CMakeFiles/equix.dir/src/context.c.o: CMakeFiles/equix.dir/flags.make
CMakeFiles/equix.dir/src/context.c.o: /home/myorn/go/src/equix/equix/src/context.c
CMakeFiles/equix.dir/src/context.c.o: CMakeFiles/equix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/myorn/go/src/equix/equix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/equix.dir/src/context.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/equix.dir/src/context.c.o -MF CMakeFiles/equix.dir/src/context.c.o.d -o CMakeFiles/equix.dir/src/context.c.o -c /home/myorn/go/src/equix/equix/src/context.c

CMakeFiles/equix.dir/src/context.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/equix.dir/src/context.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myorn/go/src/equix/equix/src/context.c > CMakeFiles/equix.dir/src/context.c.i

CMakeFiles/equix.dir/src/context.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/equix.dir/src/context.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myorn/go/src/equix/equix/src/context.c -o CMakeFiles/equix.dir/src/context.c.s

CMakeFiles/equix.dir/src/equix.c.o: CMakeFiles/equix.dir/flags.make
CMakeFiles/equix.dir/src/equix.c.o: /home/myorn/go/src/equix/equix/src/equix.c
CMakeFiles/equix.dir/src/equix.c.o: CMakeFiles/equix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/myorn/go/src/equix/equix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/equix.dir/src/equix.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/equix.dir/src/equix.c.o -MF CMakeFiles/equix.dir/src/equix.c.o.d -o CMakeFiles/equix.dir/src/equix.c.o -c /home/myorn/go/src/equix/equix/src/equix.c

CMakeFiles/equix.dir/src/equix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/equix.dir/src/equix.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myorn/go/src/equix/equix/src/equix.c > CMakeFiles/equix.dir/src/equix.c.i

CMakeFiles/equix.dir/src/equix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/equix.dir/src/equix.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myorn/go/src/equix/equix/src/equix.c -o CMakeFiles/equix.dir/src/equix.c.s

CMakeFiles/equix.dir/src/solver.c.o: CMakeFiles/equix.dir/flags.make
CMakeFiles/equix.dir/src/solver.c.o: /home/myorn/go/src/equix/equix/src/solver.c
CMakeFiles/equix.dir/src/solver.c.o: CMakeFiles/equix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/myorn/go/src/equix/equix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/equix.dir/src/solver.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/equix.dir/src/solver.c.o -MF CMakeFiles/equix.dir/src/solver.c.o.d -o CMakeFiles/equix.dir/src/solver.c.o -c /home/myorn/go/src/equix/equix/src/solver.c

CMakeFiles/equix.dir/src/solver.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/equix.dir/src/solver.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/myorn/go/src/equix/equix/src/solver.c > CMakeFiles/equix.dir/src/solver.c.i

CMakeFiles/equix.dir/src/solver.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/equix.dir/src/solver.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/myorn/go/src/equix/equix/src/solver.c -o CMakeFiles/equix.dir/src/solver.c.s

# Object files for target equix
equix_OBJECTS = \
"CMakeFiles/equix.dir/src/context.c.o" \
"CMakeFiles/equix.dir/src/equix.c.o" \
"CMakeFiles/equix.dir/src/solver.c.o"

# External object files for target equix
equix_EXTERNAL_OBJECTS =

libequix.so.1.0.0: CMakeFiles/equix.dir/src/context.c.o
libequix.so.1.0.0: CMakeFiles/equix.dir/src/equix.c.o
libequix.so.1.0.0: CMakeFiles/equix.dir/src/solver.c.o
libequix.so.1.0.0: CMakeFiles/equix.dir/build.make
libequix.so.1.0.0: hashx/libhashx.a
libequix.so.1.0.0: CMakeFiles/equix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/myorn/go/src/equix/equix/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C shared library libequix.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/equix.dir/link.txt --verbose=$(VERBOSE)
	$(CMAKE_COMMAND) -E cmake_symlink_library libequix.so.1.0.0 libequix.so.1 libequix.so

libequix.so.1: libequix.so.1.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate libequix.so.1

libequix.so: libequix.so.1.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate libequix.so

# Rule to build all files generated by this target.
CMakeFiles/equix.dir/build: libequix.so
.PHONY : CMakeFiles/equix.dir/build

CMakeFiles/equix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/equix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/equix.dir/clean

CMakeFiles/equix.dir/depend:
	cd /home/myorn/go/src/equix/equix/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/myorn/go/src/equix/equix /home/myorn/go/src/equix/equix /home/myorn/go/src/equix/equix/build /home/myorn/go/src/equix/equix/build /home/myorn/go/src/equix/equix/build/CMakeFiles/equix.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/equix.dir/depend
