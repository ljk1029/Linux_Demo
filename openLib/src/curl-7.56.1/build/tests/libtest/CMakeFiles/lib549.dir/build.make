# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build

# Include any dependencies generated for this target.
include tests/libtest/CMakeFiles/lib549.dir/depend.make

# Include the progress variables for this target.
include tests/libtest/CMakeFiles/lib549.dir/progress.make

# Include the compile flags for this target's objects.
include tests/libtest/CMakeFiles/lib549.dir/flags.make

tests/libtest/CMakeFiles/lib549.dir/lib549.c.o: tests/libtest/CMakeFiles/lib549.dir/flags.make
tests/libtest/CMakeFiles/lib549.dir/lib549.c.o: ../tests/libtest/lib549.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/libtest/CMakeFiles/lib549.dir/lib549.c.o"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib549.dir/lib549.c.o   -c /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/lib549.c

tests/libtest/CMakeFiles/lib549.dir/lib549.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib549.dir/lib549.c.i"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/lib549.c > CMakeFiles/lib549.dir/lib549.c.i

tests/libtest/CMakeFiles/lib549.dir/lib549.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib549.dir/lib549.c.s"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/lib549.c -o CMakeFiles/lib549.dir/lib549.c.s

tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.requires

tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.provides: tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib549.dir/build.make tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.provides

tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.provides.build: tests/libtest/CMakeFiles/lib549.dir/lib549.c.o


tests/libtest/CMakeFiles/lib549.dir/first.c.o: tests/libtest/CMakeFiles/lib549.dir/flags.make
tests/libtest/CMakeFiles/lib549.dir/first.c.o: ../tests/libtest/first.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/libtest/CMakeFiles/lib549.dir/first.c.o"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lib549.dir/first.c.o   -c /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/first.c

tests/libtest/CMakeFiles/lib549.dir/first.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lib549.dir/first.c.i"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/first.c > CMakeFiles/lib549.dir/first.c.i

tests/libtest/CMakeFiles/lib549.dir/first.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lib549.dir/first.c.s"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest/first.c -o CMakeFiles/lib549.dir/first.c.s

tests/libtest/CMakeFiles/lib549.dir/first.c.o.requires:

.PHONY : tests/libtest/CMakeFiles/lib549.dir/first.c.o.requires

tests/libtest/CMakeFiles/lib549.dir/first.c.o.provides: tests/libtest/CMakeFiles/lib549.dir/first.c.o.requires
	$(MAKE) -f tests/libtest/CMakeFiles/lib549.dir/build.make tests/libtest/CMakeFiles/lib549.dir/first.c.o.provides.build
.PHONY : tests/libtest/CMakeFiles/lib549.dir/first.c.o.provides

tests/libtest/CMakeFiles/lib549.dir/first.c.o.provides.build: tests/libtest/CMakeFiles/lib549.dir/first.c.o


# Object files for target lib549
lib549_OBJECTS = \
"CMakeFiles/lib549.dir/lib549.c.o" \
"CMakeFiles/lib549.dir/first.c.o"

# External object files for target lib549
lib549_EXTERNAL_OBJECTS =

tests/libtest/lib549: tests/libtest/CMakeFiles/lib549.dir/lib549.c.o
tests/libtest/lib549: tests/libtest/CMakeFiles/lib549.dir/first.c.o
tests/libtest/lib549: tests/libtest/CMakeFiles/lib549.dir/build.make
tests/libtest/lib549: lib/libcurl.so
tests/libtest/lib549: /usr/lib/x86_64-linux-gnu/libssl.so
tests/libtest/lib549: /usr/lib/x86_64-linux-gnu/libcrypto.so
tests/libtest/lib549: /usr/lib/x86_64-linux-gnu/libz.so
tests/libtest/lib549: tests/libtest/CMakeFiles/lib549.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable lib549"
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lib549.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/libtest/CMakeFiles/lib549.dir/build: tests/libtest/lib549

.PHONY : tests/libtest/CMakeFiles/lib549.dir/build

tests/libtest/CMakeFiles/lib549.dir/requires: tests/libtest/CMakeFiles/lib549.dir/lib549.c.o.requires
tests/libtest/CMakeFiles/lib549.dir/requires: tests/libtest/CMakeFiles/lib549.dir/first.c.o.requires

.PHONY : tests/libtest/CMakeFiles/lib549.dir/requires

tests/libtest/CMakeFiles/lib549.dir/clean:
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest && $(CMAKE_COMMAND) -P CMakeFiles/lib549.dir/cmake_clean.cmake
.PHONY : tests/libtest/CMakeFiles/lib549.dir/clean

tests/libtest/CMakeFiles/lib549.dir/depend:
	cd /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1 /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/tests/libtest /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest /mnt/hgfs/VMShare/CodeLIB/curl-7.56.1/build/tests/libtest/CMakeFiles/lib549.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/libtest/CMakeFiles/lib549.dir/depend
