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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.5.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.5.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hammad13060/Development/workspace/c++/CgPaint

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hammad13060/Development/workspace/c++/CgPaint

# Include any dependencies generated for this target.
include CMakeFiles/CgPaint.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CgPaint.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CgPaint.dir/flags.make

CMakeFiles/CgPaint.dir/main.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CgPaint.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/main.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/main.cpp

CMakeFiles/CgPaint.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/main.cpp > CMakeFiles/CgPaint.dir/main.cpp.i

CMakeFiles/CgPaint.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/main.cpp -o CMakeFiles/CgPaint.dir/main.cpp.s

CMakeFiles/CgPaint.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/main.cpp.o.requires

CMakeFiles/CgPaint.dir/main.cpp.o.provides: CMakeFiles/CgPaint.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/main.cpp.o.provides

CMakeFiles/CgPaint.dir/main.cpp.o.provides.build: CMakeFiles/CgPaint.dir/main.cpp.o


CMakeFiles/CgPaint.dir/Shape.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Shape.cpp.o: Shape.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CgPaint.dir/Shape.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Shape.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Shape.cpp

CMakeFiles/CgPaint.dir/Shape.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Shape.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Shape.cpp > CMakeFiles/CgPaint.dir/Shape.cpp.i

CMakeFiles/CgPaint.dir/Shape.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Shape.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Shape.cpp -o CMakeFiles/CgPaint.dir/Shape.cpp.s

CMakeFiles/CgPaint.dir/Shape.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Shape.cpp.o.requires

CMakeFiles/CgPaint.dir/Shape.cpp.o.provides: CMakeFiles/CgPaint.dir/Shape.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Shape.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Shape.cpp.o.provides

CMakeFiles/CgPaint.dir/Shape.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Shape.cpp.o


CMakeFiles/CgPaint.dir/Line.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Line.cpp.o: Line.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/CgPaint.dir/Line.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Line.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Line.cpp

CMakeFiles/CgPaint.dir/Line.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Line.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Line.cpp > CMakeFiles/CgPaint.dir/Line.cpp.i

CMakeFiles/CgPaint.dir/Line.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Line.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Line.cpp -o CMakeFiles/CgPaint.dir/Line.cpp.s

CMakeFiles/CgPaint.dir/Line.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Line.cpp.o.requires

CMakeFiles/CgPaint.dir/Line.cpp.o.provides: CMakeFiles/CgPaint.dir/Line.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Line.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Line.cpp.o.provides

CMakeFiles/CgPaint.dir/Line.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Line.cpp.o


CMakeFiles/CgPaint.dir/Shader.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Shader.cpp.o: Shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/CgPaint.dir/Shader.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Shader.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Shader.cpp

CMakeFiles/CgPaint.dir/Shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Shader.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Shader.cpp > CMakeFiles/CgPaint.dir/Shader.cpp.i

CMakeFiles/CgPaint.dir/Shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Shader.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Shader.cpp -o CMakeFiles/CgPaint.dir/Shader.cpp.s

CMakeFiles/CgPaint.dir/Shader.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Shader.cpp.o.requires

CMakeFiles/CgPaint.dir/Shader.cpp.o.provides: CMakeFiles/CgPaint.dir/Shader.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Shader.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Shader.cpp.o.provides

CMakeFiles/CgPaint.dir/Shader.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Shader.cpp.o


CMakeFiles/CgPaint.dir/Triangle.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Triangle.cpp.o: Triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/CgPaint.dir/Triangle.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Triangle.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Triangle.cpp

CMakeFiles/CgPaint.dir/Triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Triangle.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Triangle.cpp > CMakeFiles/CgPaint.dir/Triangle.cpp.i

CMakeFiles/CgPaint.dir/Triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Triangle.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Triangle.cpp -o CMakeFiles/CgPaint.dir/Triangle.cpp.s

CMakeFiles/CgPaint.dir/Triangle.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Triangle.cpp.o.requires

CMakeFiles/CgPaint.dir/Triangle.cpp.o.provides: CMakeFiles/CgPaint.dir/Triangle.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Triangle.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Triangle.cpp.o.provides

CMakeFiles/CgPaint.dir/Triangle.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Triangle.cpp.o


CMakeFiles/CgPaint.dir/Circle.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Circle.cpp.o: Circle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/CgPaint.dir/Circle.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Circle.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Circle.cpp

CMakeFiles/CgPaint.dir/Circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Circle.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Circle.cpp > CMakeFiles/CgPaint.dir/Circle.cpp.i

CMakeFiles/CgPaint.dir/Circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Circle.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Circle.cpp -o CMakeFiles/CgPaint.dir/Circle.cpp.s

CMakeFiles/CgPaint.dir/Circle.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Circle.cpp.o.requires

CMakeFiles/CgPaint.dir/Circle.cpp.o.provides: CMakeFiles/CgPaint.dir/Circle.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Circle.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Circle.cpp.o.provides

CMakeFiles/CgPaint.dir/Circle.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Circle.cpp.o


CMakeFiles/CgPaint.dir/Square.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/Square.cpp.o: Square.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/CgPaint.dir/Square.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/Square.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/Square.cpp

CMakeFiles/CgPaint.dir/Square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/Square.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/Square.cpp > CMakeFiles/CgPaint.dir/Square.cpp.i

CMakeFiles/CgPaint.dir/Square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/Square.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/Square.cpp -o CMakeFiles/CgPaint.dir/Square.cpp.s

CMakeFiles/CgPaint.dir/Square.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/Square.cpp.o.requires

CMakeFiles/CgPaint.dir/Square.cpp.o.provides: CMakeFiles/CgPaint.dir/Square.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/Square.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/Square.cpp.o.provides

CMakeFiles/CgPaint.dir/Square.cpp.o.provides.build: CMakeFiles/CgPaint.dir/Square.cpp.o


CMakeFiles/CgPaint.dir/pen.cpp.o: CMakeFiles/CgPaint.dir/flags.make
CMakeFiles/CgPaint.dir/pen.cpp.o: pen.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/CgPaint.dir/pen.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CgPaint.dir/pen.cpp.o -c /Users/hammad13060/Development/workspace/c++/CgPaint/pen.cpp

CMakeFiles/CgPaint.dir/pen.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CgPaint.dir/pen.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hammad13060/Development/workspace/c++/CgPaint/pen.cpp > CMakeFiles/CgPaint.dir/pen.cpp.i

CMakeFiles/CgPaint.dir/pen.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CgPaint.dir/pen.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hammad13060/Development/workspace/c++/CgPaint/pen.cpp -o CMakeFiles/CgPaint.dir/pen.cpp.s

CMakeFiles/CgPaint.dir/pen.cpp.o.requires:

.PHONY : CMakeFiles/CgPaint.dir/pen.cpp.o.requires

CMakeFiles/CgPaint.dir/pen.cpp.o.provides: CMakeFiles/CgPaint.dir/pen.cpp.o.requires
	$(MAKE) -f CMakeFiles/CgPaint.dir/build.make CMakeFiles/CgPaint.dir/pen.cpp.o.provides.build
.PHONY : CMakeFiles/CgPaint.dir/pen.cpp.o.provides

CMakeFiles/CgPaint.dir/pen.cpp.o.provides.build: CMakeFiles/CgPaint.dir/pen.cpp.o


# Object files for target CgPaint
CgPaint_OBJECTS = \
"CMakeFiles/CgPaint.dir/main.cpp.o" \
"CMakeFiles/CgPaint.dir/Shape.cpp.o" \
"CMakeFiles/CgPaint.dir/Line.cpp.o" \
"CMakeFiles/CgPaint.dir/Shader.cpp.o" \
"CMakeFiles/CgPaint.dir/Triangle.cpp.o" \
"CMakeFiles/CgPaint.dir/Circle.cpp.o" \
"CMakeFiles/CgPaint.dir/Square.cpp.o" \
"CMakeFiles/CgPaint.dir/pen.cpp.o"

# External object files for target CgPaint
CgPaint_EXTERNAL_OBJECTS =

CgPaint: CMakeFiles/CgPaint.dir/main.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Shape.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Line.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Shader.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Triangle.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Circle.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/Square.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/pen.cpp.o
CgPaint: CMakeFiles/CgPaint.dir/build.make
CgPaint: CMakeFiles/CgPaint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable CgPaint"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CgPaint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CgPaint.dir/build: CgPaint

.PHONY : CMakeFiles/CgPaint.dir/build

CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/main.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Shape.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Line.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Shader.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Triangle.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Circle.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/Square.cpp.o.requires
CMakeFiles/CgPaint.dir/requires: CMakeFiles/CgPaint.dir/pen.cpp.o.requires

.PHONY : CMakeFiles/CgPaint.dir/requires

CMakeFiles/CgPaint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CgPaint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CgPaint.dir/clean

CMakeFiles/CgPaint.dir/depend:
	cd /Users/hammad13060/Development/workspace/c++/CgPaint && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hammad13060/Development/workspace/c++/CgPaint /Users/hammad13060/Development/workspace/c++/CgPaint /Users/hammad13060/Development/workspace/c++/CgPaint /Users/hammad13060/Development/workspace/c++/CgPaint /Users/hammad13060/Development/workspace/c++/CgPaint/CMakeFiles/CgPaint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CgPaint.dir/depend

