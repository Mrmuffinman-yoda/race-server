# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = C:\msys64\mingw64\bin\cmake.exe

# The command to remove a file.
RM = C:\msys64\mingw64\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "E:\Projects\F1 Management\Code\Server"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "E:\Projects\F1 Management\Code\Server\build"

# Include any dependencies generated for this target.
include CMakeFiles/RaceServer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/RaceServer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/RaceServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RaceServer.dir/flags.make

CMakeFiles/RaceServer.dir/codegen:
.PHONY : CMakeFiles/RaceServer.dir/codegen

CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj: CMakeFiles/RaceServer.dir/flags.make
CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj: CMakeFiles/RaceServer.dir/includes_CXX.rsp
CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj: E:/Projects/F1\ Management/Code/Server/src/controllers/f1_controller.cpp
CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj: CMakeFiles/RaceServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj -MF CMakeFiles\RaceServer.dir\src\controllers\f1_controller.cpp.obj.d -o CMakeFiles\RaceServer.dir\src\controllers\f1_controller.cpp.obj -c "E:\Projects\F1 Management\Code\Server\src\controllers\f1_controller.cpp"

CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Projects\F1 Management\Code\Server\src\controllers\f1_controller.cpp" > CMakeFiles\RaceServer.dir\src\controllers\f1_controller.cpp.i

CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Projects\F1 Management\Code\Server\src\controllers\f1_controller.cpp" -o CMakeFiles\RaceServer.dir\src\controllers\f1_controller.cpp.s

CMakeFiles/RaceServer.dir/src/main.cpp.obj: CMakeFiles/RaceServer.dir/flags.make
CMakeFiles/RaceServer.dir/src/main.cpp.obj: CMakeFiles/RaceServer.dir/includes_CXX.rsp
CMakeFiles/RaceServer.dir/src/main.cpp.obj: E:/Projects/F1\ Management/Code/Server/src/main.cpp
CMakeFiles/RaceServer.dir/src/main.cpp.obj: CMakeFiles/RaceServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/RaceServer.dir/src/main.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceServer.dir/src/main.cpp.obj -MF CMakeFiles\RaceServer.dir\src\main.cpp.obj.d -o CMakeFiles\RaceServer.dir\src\main.cpp.obj -c "E:\Projects\F1 Management\Code\Server\src\main.cpp"

CMakeFiles/RaceServer.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceServer.dir/src/main.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Projects\F1 Management\Code\Server\src\main.cpp" > CMakeFiles\RaceServer.dir\src\main.cpp.i

CMakeFiles/RaceServer.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceServer.dir/src/main.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Projects\F1 Management\Code\Server\src\main.cpp" -o CMakeFiles\RaceServer.dir\src\main.cpp.s

CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj: CMakeFiles/RaceServer.dir/flags.make
CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj: CMakeFiles/RaceServer.dir/includes_CXX.rsp
CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj: E:/Projects/F1\ Management/Code/Server/src/models/Driver.cpp
CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj: CMakeFiles/RaceServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj -MF CMakeFiles\RaceServer.dir\src\models\Driver.cpp.obj.d -o CMakeFiles\RaceServer.dir\src\models\Driver.cpp.obj -c "E:\Projects\F1 Management\Code\Server\src\models\Driver.cpp"

CMakeFiles/RaceServer.dir/src/models/Driver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceServer.dir/src/models/Driver.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Projects\F1 Management\Code\Server\src\models\Driver.cpp" > CMakeFiles\RaceServer.dir\src\models\Driver.cpp.i

CMakeFiles/RaceServer.dir/src/models/Driver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceServer.dir/src/models/Driver.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Projects\F1 Management\Code\Server\src\models\Driver.cpp" -o CMakeFiles\RaceServer.dir\src\models\Driver.cpp.s

CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj: CMakeFiles/RaceServer.dir/flags.make
CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj: CMakeFiles/RaceServer.dir/includes_CXX.rsp
CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj: E:/Projects/F1\ Management/Code/Server/src/models/Team.cpp
CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj: CMakeFiles/RaceServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj -MF CMakeFiles\RaceServer.dir\src\models\Team.cpp.obj.d -o CMakeFiles\RaceServer.dir\src\models\Team.cpp.obj -c "E:\Projects\F1 Management\Code\Server\src\models\Team.cpp"

CMakeFiles/RaceServer.dir/src/models/Team.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceServer.dir/src/models/Team.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Projects\F1 Management\Code\Server\src\models\Team.cpp" > CMakeFiles\RaceServer.dir\src\models\Team.cpp.i

CMakeFiles/RaceServer.dir/src/models/Team.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceServer.dir/src/models/Team.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Projects\F1 Management\Code\Server\src\models\Team.cpp" -o CMakeFiles\RaceServer.dir\src\models\Team.cpp.s

CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj: CMakeFiles/RaceServer.dir/flags.make
CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj: CMakeFiles/RaceServer.dir/includes_CXX.rsp
CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj: E:/Projects/F1\ Management/Code/Server/src/routes/f1_routes.cpp
CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj: CMakeFiles/RaceServer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj -MF CMakeFiles\RaceServer.dir\src\routes\f1_routes.cpp.obj.d -o CMakeFiles\RaceServer.dir\src\routes\f1_routes.cpp.obj -c "E:\Projects\F1 Management\Code\Server\src\routes\f1_routes.cpp"

CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.i"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "E:\Projects\F1 Management\Code\Server\src\routes\f1_routes.cpp" > CMakeFiles\RaceServer.dir\src\routes\f1_routes.cpp.i

CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.s"
	C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "E:\Projects\F1 Management\Code\Server\src\routes\f1_routes.cpp" -o CMakeFiles\RaceServer.dir\src\routes\f1_routes.cpp.s

# Object files for target RaceServer
RaceServer_OBJECTS = \
"CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj" \
"CMakeFiles/RaceServer.dir/src/main.cpp.obj" \
"CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj" \
"CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj" \
"CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj"

# External object files for target RaceServer
RaceServer_EXTERNAL_OBJECTS =

RaceServer.exe: CMakeFiles/RaceServer.dir/src/controllers/f1_controller.cpp.obj
RaceServer.exe: CMakeFiles/RaceServer.dir/src/main.cpp.obj
RaceServer.exe: CMakeFiles/RaceServer.dir/src/models/Driver.cpp.obj
RaceServer.exe: CMakeFiles/RaceServer.dir/src/models/Team.cpp.obj
RaceServer.exe: CMakeFiles/RaceServer.dir/src/routes/f1_routes.cpp.obj
RaceServer.exe: CMakeFiles/RaceServer.dir/build.make
RaceServer.exe: CMakeFiles/RaceServer.dir/linkLibs.rsp
RaceServer.exe: CMakeFiles/RaceServer.dir/objects1.rsp
RaceServer.exe: CMakeFiles/RaceServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="E:\Projects\F1 Management\Code\Server\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable RaceServer.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\RaceServer.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RaceServer.dir/build: RaceServer.exe
.PHONY : CMakeFiles/RaceServer.dir/build

CMakeFiles/RaceServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\RaceServer.dir\cmake_clean.cmake
.PHONY : CMakeFiles/RaceServer.dir/clean

CMakeFiles/RaceServer.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "E:\Projects\F1 Management\Code\Server" "E:\Projects\F1 Management\Code\Server" "E:\Projects\F1 Management\Code\Server\build" "E:\Projects\F1 Management\Code\Server\build" "E:\Projects\F1 Management\Code\Server\build\CMakeFiles\RaceServer.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/RaceServer.dir/depend

