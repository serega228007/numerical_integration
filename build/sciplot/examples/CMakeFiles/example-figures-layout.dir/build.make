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
include sciplot/examples/CMakeFiles/example-figures-layout.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include sciplot/examples/CMakeFiles/example-figures-layout.dir/compiler_depend.make

# Include the progress variables for this target.
include sciplot/examples/CMakeFiles/example-figures-layout.dir/progress.make

# Include the compile flags for this target's objects.
include sciplot/examples/CMakeFiles/example-figures-layout.dir/flags.make

sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj: sciplot/examples/CMakeFiles/example-figures-layout.dir/flags.make
sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj: sciplot/examples/CMakeFiles/example-figures-layout.dir/includes_CXX.rsp
sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj: C:/numerical_integration/sciplot/examples/example-figures-layout.cpp
sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj: sciplot/examples/CMakeFiles/example-figures-layout.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj"
	cd /d C:\numerical_integration\build\sciplot\examples && "C:\Program Files\mingw64\bin\ccache.exe" C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj -MF CMakeFiles\example-figures-layout.dir\example-figures-layout.cpp.obj.d -o CMakeFiles\example-figures-layout.dir\example-figures-layout.cpp.obj -c C:\numerical_integration\sciplot\examples\example-figures-layout.cpp

sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.i"
	cd /d C:\numerical_integration\build\sciplot\examples && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\numerical_integration\sciplot\examples\example-figures-layout.cpp > CMakeFiles\example-figures-layout.dir\example-figures-layout.cpp.i

sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.s"
	cd /d C:\numerical_integration\build\sciplot\examples && C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\numerical_integration\sciplot\examples\example-figures-layout.cpp -o CMakeFiles\example-figures-layout.dir\example-figures-layout.cpp.s

# Object files for target example-figures-layout
example__figures__layout_OBJECTS = \
"CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj"

# External object files for target example-figures-layout
example__figures__layout_EXTERNAL_OBJECTS =

sciplot/examples/example-figures-layout.exe: sciplot/examples/CMakeFiles/example-figures-layout.dir/example-figures-layout.cpp.obj
sciplot/examples/example-figures-layout.exe: sciplot/examples/CMakeFiles/example-figures-layout.dir/build.make
sciplot/examples/example-figures-layout.exe: sciplot/examples/CMakeFiles/example-figures-layout.dir/linkLibs.rsp
sciplot/examples/example-figures-layout.exe: sciplot/examples/CMakeFiles/example-figures-layout.dir/objects1.rsp
sciplot/examples/example-figures-layout.exe: sciplot/examples/CMakeFiles/example-figures-layout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example-figures-layout.exe"
	cd /d C:\numerical_integration\build\sciplot\examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\example-figures-layout.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sciplot/examples/CMakeFiles/example-figures-layout.dir/build: sciplot/examples/example-figures-layout.exe
.PHONY : sciplot/examples/CMakeFiles/example-figures-layout.dir/build

sciplot/examples/CMakeFiles/example-figures-layout.dir/clean:
	cd /d C:\numerical_integration\build\sciplot\examples && $(CMAKE_COMMAND) -P CMakeFiles\example-figures-layout.dir\cmake_clean.cmake
.PHONY : sciplot/examples/CMakeFiles/example-figures-layout.dir/clean

sciplot/examples/CMakeFiles/example-figures-layout.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\numerical_integration C:\numerical_integration\sciplot\examples C:\numerical_integration\build C:\numerical_integration\build\sciplot\examples C:\numerical_integration\build\sciplot\examples\CMakeFiles\example-figures-layout.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : sciplot/examples/CMakeFiles/example-figures-layout.dir/depend

