# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /Users/jing/miniconda3/envs/pybind_env/bin/cmake

# The command to remove a file.
RM = /Users/jing/miniconda3/envs/pybind_env/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jing/MolSSI-traning/pybind-tutorial/build

# Include any dependencies generated for this target.
include CMakeFiles/basic_mod.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/basic_mod.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/basic_mod.dir/flags.make

CMakeFiles/basic_mod.dir/basic_mod.cpp.o: CMakeFiles/basic_mod.dir/flags.make
CMakeFiles/basic_mod.dir/basic_mod.cpp.o: /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial/basic_mod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jing/MolSSI-traning/pybind-tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/basic_mod.dir/basic_mod.cpp.o"
	/Users/jing/miniconda3/envs/pybind_env/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/basic_mod.dir/basic_mod.cpp.o -c /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial/basic_mod.cpp

CMakeFiles/basic_mod.dir/basic_mod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/basic_mod.dir/basic_mod.cpp.i"
	/Users/jing/miniconda3/envs/pybind_env/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial/basic_mod.cpp > CMakeFiles/basic_mod.dir/basic_mod.cpp.i

CMakeFiles/basic_mod.dir/basic_mod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/basic_mod.dir/basic_mod.cpp.s"
	/Users/jing/miniconda3/envs/pybind_env/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial/basic_mod.cpp -o CMakeFiles/basic_mod.dir/basic_mod.cpp.s

CMakeFiles/basic_mod.dir/basic_mod.cpp.o.requires:

.PHONY : CMakeFiles/basic_mod.dir/basic_mod.cpp.o.requires

CMakeFiles/basic_mod.dir/basic_mod.cpp.o.provides: CMakeFiles/basic_mod.dir/basic_mod.cpp.o.requires
	$(MAKE) -f CMakeFiles/basic_mod.dir/build.make CMakeFiles/basic_mod.dir/basic_mod.cpp.o.provides.build
.PHONY : CMakeFiles/basic_mod.dir/basic_mod.cpp.o.provides

CMakeFiles/basic_mod.dir/basic_mod.cpp.o.provides.build: CMakeFiles/basic_mod.dir/basic_mod.cpp.o


# Object files for target basic_mod
basic_mod_OBJECTS = \
"CMakeFiles/basic_mod.dir/basic_mod.cpp.o"

# External object files for target basic_mod
basic_mod_EXTERNAL_OBJECTS =

basic_mod.cpython-36m-darwin.so: CMakeFiles/basic_mod.dir/basic_mod.cpp.o
basic_mod.cpython-36m-darwin.so: CMakeFiles/basic_mod.dir/build.make
basic_mod.cpython-36m-darwin.so: CMakeFiles/basic_mod.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jing/MolSSI-traning/pybind-tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module basic_mod.cpython-36m-darwin.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/basic_mod.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/basic_mod.dir/build: basic_mod.cpython-36m-darwin.so

.PHONY : CMakeFiles/basic_mod.dir/build

CMakeFiles/basic_mod.dir/requires: CMakeFiles/basic_mod.dir/basic_mod.cpp.o.requires

.PHONY : CMakeFiles/basic_mod.dir/requires

CMakeFiles/basic_mod.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/basic_mod.dir/cmake_clean.cmake
.PHONY : CMakeFiles/basic_mod.dir/clean

CMakeFiles/basic_mod.dir/depend:
	cd /Users/jing/MolSSI-traning/pybind-tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial /Users/jing/MolSSI-traning/pybind-tutorial/pybind-tutorial /Users/jing/MolSSI-traning/pybind-tutorial/build /Users/jing/MolSSI-traning/pybind-tutorial/build /Users/jing/MolSSI-traning/pybind-tutorial/build/CMakeFiles/basic_mod.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/basic_mod.dir/depend
