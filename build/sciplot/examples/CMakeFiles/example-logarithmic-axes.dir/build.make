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

# Include any dependencies generated for this target.
include sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/compiler_depend.make

# Include the progress variables for this target.
include sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/progress.make

# Include the compile flags for this target's objects.
include sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/flags.make

sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/flags.make
sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/includes_CXX.rsp
sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj: C:/numerical_integration/sciplot/examples/example-logarithmic-axes.cpp
sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj"
	cd /d C:\numerical_integration\build\sciplot\examples && "C:\Program Files\mingw64\bin\ccache.exe" C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj -MF CMakeFiles\example-logarithmic-axes.dir\example-logarithmic-axes.cpp.obj.d -o CMakeFiles\example-logarithmic-axes.dir\example-logarithmic-axes.cpp.obj -c C:\numerical_integration\sciplot\examples\example-logarithmic-axes.cpp

sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.i"
	cd /d C:\numerical_integration\build\sciplot\examples && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\numerical_integration\sciplot\examples\example-logarithmic-axes.cpp > CMakeFiles\example-logarithmic-axes.dir\example-logarithmic-axes.cpp.i

sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.s"
	cd /d C:\numerical_integration\build\sciplot\examples && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\numerical_integration\sciplot\examples\example-logarithmic-axes.cpp -o CMakeFiles\example-logarithmic-axes.dir\example-logarithmic-axes.cpp.s

# Object files for target example-logarithmic-axes
example__logarithmic__axes_OBJECTS = \
"CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj"

# External object files for target example-logarithmic-axes
example__logarithmic__axes_EXTERNAL_OBJECTS =

sciplot/examples/example-logarithmic-axes.exe: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/example-logarithmic-axes.cpp.obj
sciplot/examples/example-logarithmic-axes.exe: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/build.make
sciplot/examples/example-logarithmic-axes.exe: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/linkLibs.rsp
sciplot/examples/example-logarithmic-axes.exe: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/objects1.rsp
sciplot/examples/example-logarithmic-axes.exe: sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-logarithmic-axes.exe"
	cd /d C:\numerical_integration\build\sciplot\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\example-logarithmic-axes.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/build: sciplot/examples/example-logarithmic-axes.exe
.PHONY : sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/build

sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/clean:
	cd /d C:\numerical_integration\build\sciplot\examples && $(CMAKE_COMMAND) -P CMakeFiles\example-logarithmic-axes.dir\cmake_clean.cmake
.PHONY : sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/clean

sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\numerical_integration C:\numerical_integration\sciplot\examples C:\numerical_integration\build C:\numerical_integration\build\sciplot\examples C:\numerical_integration\build\sciplot\examples\CMakeFiles\example-logarithmic-axes.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : sciplot/examples/CMakeFiles/example-logarithmic-axes.dir/depend

