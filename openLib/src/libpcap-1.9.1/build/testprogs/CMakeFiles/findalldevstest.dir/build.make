# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/ljk/Test/libpcap-1.9.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ljk/Test/libpcap-1.9.1/build

# Include any dependencies generated for this target.
include testprogs/CMakeFiles/findalldevstest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include testprogs/CMakeFiles/findalldevstest.dir/compiler_depend.make

# Include the progress variables for this target.
include testprogs/CMakeFiles/findalldevstest.dir/progress.make

# Include the compile flags for this target's objects.
include testprogs/CMakeFiles/findalldevstest.dir/flags.make

testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o: testprogs/CMakeFiles/findalldevstest.dir/flags.make
testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o: ../testprogs/findalldevstest.c
testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o: testprogs/CMakeFiles/findalldevstest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ljk/Test/libpcap-1.9.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o"
	cd /home/ljk/Test/libpcap-1.9.1/build/testprogs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o -MF CMakeFiles/findalldevstest.dir/findalldevstest.c.o.d -o CMakeFiles/findalldevstest.dir/findalldevstest.c.o -c /home/ljk/Test/libpcap-1.9.1/testprogs/findalldevstest.c

testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/findalldevstest.dir/findalldevstest.c.i"
	cd /home/ljk/Test/libpcap-1.9.1/build/testprogs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ljk/Test/libpcap-1.9.1/testprogs/findalldevstest.c > CMakeFiles/findalldevstest.dir/findalldevstest.c.i

testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/findalldevstest.dir/findalldevstest.c.s"
	cd /home/ljk/Test/libpcap-1.9.1/build/testprogs && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ljk/Test/libpcap-1.9.1/testprogs/findalldevstest.c -o CMakeFiles/findalldevstest.dir/findalldevstest.c.s

# Object files for target findalldevstest
findalldevstest_OBJECTS = \
"CMakeFiles/findalldevstest.dir/findalldevstest.c.o"

# External object files for target findalldevstest
findalldevstest_EXTERNAL_OBJECTS =

run/findalldevstest: testprogs/CMakeFiles/findalldevstest.dir/findalldevstest.c.o
run/findalldevstest: testprogs/CMakeFiles/findalldevstest.dir/build.make
run/findalldevstest: libpcap.a
run/findalldevstest: testprogs/CMakeFiles/findalldevstest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ljk/Test/libpcap-1.9.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../run/findalldevstest"
	cd /home/ljk/Test/libpcap-1.9.1/build/testprogs && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/findalldevstest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
testprogs/CMakeFiles/findalldevstest.dir/build: run/findalldevstest
.PHONY : testprogs/CMakeFiles/findalldevstest.dir/build

testprogs/CMakeFiles/findalldevstest.dir/clean:
	cd /home/ljk/Test/libpcap-1.9.1/build/testprogs && $(CMAKE_COMMAND) -P CMakeFiles/findalldevstest.dir/cmake_clean.cmake
.PHONY : testprogs/CMakeFiles/findalldevstest.dir/clean

testprogs/CMakeFiles/findalldevstest.dir/depend:
	cd /home/ljk/Test/libpcap-1.9.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ljk/Test/libpcap-1.9.1 /home/ljk/Test/libpcap-1.9.1/testprogs /home/ljk/Test/libpcap-1.9.1/build /home/ljk/Test/libpcap-1.9.1/build/testprogs /home/ljk/Test/libpcap-1.9.1/build/testprogs/CMakeFiles/findalldevstest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : testprogs/CMakeFiles/findalldevstest.dir/depend
