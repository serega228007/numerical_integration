# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\mingw64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\mingw64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\numerical_integration

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\numerical_integration\build

# Utility rule file for docs-api.

# Include any custom commands dependencies for this target.
include sciplot/docs/CMakeFiles/docs-api.dir/compiler_depend.make

# Include the progress variables for this target.
include sciplot/docs/CMakeFiles/docs-api.dir/progress.make

sciplot/docs/CMakeFiles/docs-api:
	cd /d C:\numerical_integration\build\sciplot\docs\api && doxygen doxyfile

docs-api: sciplot/docs/CMakeFiles/docs-api
docs-api: sciplot/docs/CMakeFiles/docs-api.dir/build.make
.PHONY : docs-api

# Rule to build all files generated by this target.
sciplot/docs/CMakeFiles/docs-api.dir/build: docs-api
.PHONY : sciplot/docs/CMakeFiles/docs-api.dir/build

sciplot/docs/CMakeFiles/docs-api.dir/clean:
	cd /d C:\numerical_integration\build\sciplot\docs && $(CMAKE_COMMAND) -P CMakeFiles\docs-api.dir\cmake_clean.cmake
.PHONY : sciplot/docs/CMakeFiles/docs-api.dir/clean

sciplot/docs/CMakeFiles/docs-api.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\numerical_integration C:\numerical_integration\sciplot\docs C:\numerical_integration\build C:\numerical_integration\build\sciplot\docs C:\numerical_integration\build\sciplot\docs\CMakeFiles\docs-api.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : sciplot/docs/CMakeFiles/docs-api.dir/depend

