# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/jay/gpd_ws/gpg

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jay/gpd_ws/gpg/build

# Include any dependencies generated for this target.
include CMakeFiles/gpg_plot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gpg_plot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gpg_plot.dir/flags.make

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o: CMakeFiles/gpg_plot.dir/flags.make
CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o: ../src/gpg/plot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jay/gpd_ws/gpg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o -c /home/jay/gpd_ws/gpg/src/gpg/plot.cpp

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jay/gpd_ws/gpg/src/gpg/plot.cpp > CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.i

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jay/gpd_ws/gpg/src/gpg/plot.cpp -o CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.s

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.requires:

.PHONY : CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.requires

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.provides: CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.requires
	$(MAKE) -f CMakeFiles/gpg_plot.dir/build.make CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.provides.build
.PHONY : CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.provides

CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.provides.build: CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o


# Object files for target gpg_plot
gpg_plot_OBJECTS = \
"CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o"

# External object files for target gpg_plot
gpg_plot_EXTERNAL_OBJECTS =

libgpg_plot.a: CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o
libgpg_plot.a: CMakeFiles/gpg_plot.dir/build.make
libgpg_plot.a: CMakeFiles/gpg_plot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jay/gpd_ws/gpg/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgpg_plot.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gpg_plot.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpg_plot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gpg_plot.dir/build: libgpg_plot.a

.PHONY : CMakeFiles/gpg_plot.dir/build

CMakeFiles/gpg_plot.dir/requires: CMakeFiles/gpg_plot.dir/src/gpg/plot.cpp.o.requires

.PHONY : CMakeFiles/gpg_plot.dir/requires

CMakeFiles/gpg_plot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gpg_plot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gpg_plot.dir/clean

CMakeFiles/gpg_plot.dir/depend:
	cd /home/jay/gpd_ws/gpg/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jay/gpd_ws/gpg /home/jay/gpd_ws/gpg /home/jay/gpd_ws/gpg/build /home/jay/gpd_ws/gpg/build /home/jay/gpd_ws/gpg/build/CMakeFiles/gpg_plot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gpg_plot.dir/depend

