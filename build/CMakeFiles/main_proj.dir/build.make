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
include CMakeFiles/main_proj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main_proj.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main_proj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main_proj.dir/flags.make

CMakeFiles/main_proj.dir/main.cpp.obj: CMakeFiles/main_proj.dir/flags.make
CMakeFiles/main_proj.dir/main.cpp.obj: CMakeFiles/main_proj.dir/includes_CXX.rsp
CMakeFiles/main_proj.dir/main.cpp.obj: C:/numerical_integration/main.cpp
CMakeFiles/main_proj.dir/main.cpp.obj: CMakeFiles/main_proj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main_proj.dir/main.cpp.obj"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_proj.dir/main.cpp.obj -MF CMakeFiles\main_proj.dir\main.cpp.obj.d -o CMakeFiles\main_proj.dir\main.cpp.obj -c C:\numerical_integration\main.cpp

CMakeFiles/main_proj.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_proj.dir/main.cpp.i"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\numerical_integration\main.cpp > CMakeFiles\main_proj.dir\main.cpp.i

CMakeFiles/main_proj.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_proj.dir/main.cpp.s"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\numerical_integration\main.cpp -o CMakeFiles\main_proj.dir\main.cpp.s

CMakeFiles/main_proj.dir/func.cpp.obj: CMakeFiles/main_proj.dir/flags.make
CMakeFiles/main_proj.dir/func.cpp.obj: CMakeFiles/main_proj.dir/includes_CXX.rsp
CMakeFiles/main_proj.dir/func.cpp.obj: C:/numerical_integration/func.cpp
CMakeFiles/main_proj.dir/func.cpp.obj: CMakeFiles/main_proj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main_proj.dir/func.cpp.obj"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main_proj.dir/func.cpp.obj -MF CMakeFiles\main_proj.dir\func.cpp.obj.d -o CMakeFiles\main_proj.dir\func.cpp.obj -c C:\numerical_integration\func.cpp

CMakeFiles/main_proj.dir/func.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/main_proj.dir/func.cpp.i"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\numerical_integration\func.cpp > CMakeFiles\main_proj.dir\func.cpp.i

CMakeFiles/main_proj.dir/func.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/main_proj.dir/func.cpp.s"
	C:\PROGRA~1\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\numerical_integration\func.cpp -o CMakeFiles\main_proj.dir\func.cpp.s

# Object files for target main_proj
main_proj_OBJECTS = \
"CMakeFiles/main_proj.dir/main.cpp.obj" \
"CMakeFiles/main_proj.dir/func.cpp.obj"

# External object files for target main_proj
main_proj_EXTERNAL_OBJECTS =

main_proj.exe: CMakeFiles/main_proj.dir/main.cpp.obj
main_proj.exe: CMakeFiles/main_proj.dir/func.cpp.obj
main_proj.exe: CMakeFiles/main_proj.dir/build.make
main_proj.exe: CMakeFiles/main_proj.dir/linkLibs.rsp
main_proj.exe: CMakeFiles/main_proj.dir/objects1.rsp
main_proj.exe: CMakeFiles/main_proj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\numerical_integration\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable main_proj.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\main_proj.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main_proj.dir/build: main_proj.exe
.PHONY : CMakeFiles/main_proj.dir/build

CMakeFiles/main_proj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\main_proj.dir\cmake_clean.cmake
.PHONY : CMakeFiles/main_proj.dir/clean

CMakeFiles/main_proj.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\numerical_integration C:\numerical_integration C:\numerical_integration\build C:\numerical_integration\build C:\numerical_integration\build\CMakeFiles\main_proj.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/main_proj.dir/depend
