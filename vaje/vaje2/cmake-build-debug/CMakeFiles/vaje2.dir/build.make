# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /home/primoz/Downloads/CLion-2017.2.3/clion-2017.2.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/primoz/Downloads/CLion-2017.2.3/clion-2017.2.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/primoz/faks/spo/vaje/vaje2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/primoz/faks/spo/vaje/vaje2/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/vaje2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vaje2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vaje2.dir/flags.make

CMakeFiles/vaje2.dir/naloga-1.c.o: CMakeFiles/vaje2.dir/flags.make
CMakeFiles/vaje2.dir/naloga-1.c.o: ../naloga-1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/primoz/faks/spo/vaje/vaje2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/vaje2.dir/naloga-1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vaje2.dir/naloga-1.c.o   -c /home/primoz/faks/spo/vaje/vaje2/naloga-1.c

CMakeFiles/vaje2.dir/naloga-1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vaje2.dir/naloga-1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/primoz/faks/spo/vaje/vaje2/naloga-1.c > CMakeFiles/vaje2.dir/naloga-1.c.i

CMakeFiles/vaje2.dir/naloga-1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vaje2.dir/naloga-1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/primoz/faks/spo/vaje/vaje2/naloga-1.c -o CMakeFiles/vaje2.dir/naloga-1.c.s

CMakeFiles/vaje2.dir/naloga-1.c.o.requires:

.PHONY : CMakeFiles/vaje2.dir/naloga-1.c.o.requires

CMakeFiles/vaje2.dir/naloga-1.c.o.provides: CMakeFiles/vaje2.dir/naloga-1.c.o.requires
	$(MAKE) -f CMakeFiles/vaje2.dir/build.make CMakeFiles/vaje2.dir/naloga-1.c.o.provides.build
.PHONY : CMakeFiles/vaje2.dir/naloga-1.c.o.provides

CMakeFiles/vaje2.dir/naloga-1.c.o.provides.build: CMakeFiles/vaje2.dir/naloga-1.c.o


# Object files for target vaje2
vaje2_OBJECTS = \
"CMakeFiles/vaje2.dir/naloga-1.c.o"

# External object files for target vaje2
vaje2_EXTERNAL_OBJECTS =

vaje2: CMakeFiles/vaje2.dir/naloga-1.c.o
vaje2: CMakeFiles/vaje2.dir/build.make
vaje2: CMakeFiles/vaje2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/primoz/faks/spo/vaje/vaje2/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable vaje2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vaje2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vaje2.dir/build: vaje2

.PHONY : CMakeFiles/vaje2.dir/build

CMakeFiles/vaje2.dir/requires: CMakeFiles/vaje2.dir/naloga-1.c.o.requires

.PHONY : CMakeFiles/vaje2.dir/requires

CMakeFiles/vaje2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vaje2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vaje2.dir/clean

CMakeFiles/vaje2.dir/depend:
	cd /home/primoz/faks/spo/vaje/vaje2/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/primoz/faks/spo/vaje/vaje2 /home/primoz/faks/spo/vaje/vaje2 /home/primoz/faks/spo/vaje/vaje2/cmake-build-debug /home/primoz/faks/spo/vaje/vaje2/cmake-build-debug /home/primoz/faks/spo/vaje/vaje2/cmake-build-debug/CMakeFiles/vaje2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vaje2.dir/depend
