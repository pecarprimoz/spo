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
CMAKE_SOURCE_DIR = /home/primoz/faks/spo/vaje/vaje2nonroot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/vaje2nonroot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vaje2nonroot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vaje2nonroot.dir/flags.make

CMakeFiles/vaje2nonroot.dir/main.c.o: CMakeFiles/vaje2nonroot.dir/flags.make
CMakeFiles/vaje2nonroot.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/vaje2nonroot.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/vaje2nonroot.dir/main.c.o   -c /home/primoz/faks/spo/vaje/vaje2nonroot/main.c

CMakeFiles/vaje2nonroot.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vaje2nonroot.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/primoz/faks/spo/vaje/vaje2nonroot/main.c > CMakeFiles/vaje2nonroot.dir/main.c.i

CMakeFiles/vaje2nonroot.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vaje2nonroot.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/primoz/faks/spo/vaje/vaje2nonroot/main.c -o CMakeFiles/vaje2nonroot.dir/main.c.s

CMakeFiles/vaje2nonroot.dir/main.c.o.requires:

.PHONY : CMakeFiles/vaje2nonroot.dir/main.c.o.requires

CMakeFiles/vaje2nonroot.dir/main.c.o.provides: CMakeFiles/vaje2nonroot.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/vaje2nonroot.dir/build.make CMakeFiles/vaje2nonroot.dir/main.c.o.provides.build
.PHONY : CMakeFiles/vaje2nonroot.dir/main.c.o.provides

CMakeFiles/vaje2nonroot.dir/main.c.o.provides.build: CMakeFiles/vaje2nonroot.dir/main.c.o


# Object files for target vaje2nonroot
vaje2nonroot_OBJECTS = \
"CMakeFiles/vaje2nonroot.dir/main.c.o"

# External object files for target vaje2nonroot
vaje2nonroot_EXTERNAL_OBJECTS =

vaje2nonroot: CMakeFiles/vaje2nonroot.dir/main.c.o
vaje2nonroot: CMakeFiles/vaje2nonroot.dir/build.make
vaje2nonroot: CMakeFiles/vaje2nonroot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable vaje2nonroot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vaje2nonroot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vaje2nonroot.dir/build: vaje2nonroot

.PHONY : CMakeFiles/vaje2nonroot.dir/build

CMakeFiles/vaje2nonroot.dir/requires: CMakeFiles/vaje2nonroot.dir/main.c.o.requires

.PHONY : CMakeFiles/vaje2nonroot.dir/requires

CMakeFiles/vaje2nonroot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vaje2nonroot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vaje2nonroot.dir/clean

CMakeFiles/vaje2nonroot.dir/depend:
	cd /home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/primoz/faks/spo/vaje/vaje2nonroot /home/primoz/faks/spo/vaje/vaje2nonroot /home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug /home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug /home/primoz/faks/spo/vaje/vaje2nonroot/cmake-build-debug/CMakeFiles/vaje2nonroot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vaje2nonroot.dir/depend

