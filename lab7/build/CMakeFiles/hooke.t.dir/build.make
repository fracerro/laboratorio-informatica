# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/francesco/uni/informatica/laboratorio-informatica/lab7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/francesco/uni/informatica/laboratorio-informatica/lab7/build

# Include any dependencies generated for this target.
include CMakeFiles/hooke.t.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hooke.t.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hooke.t.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hooke.t.dir/flags.make

CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o: CMakeFiles/hooke.t.dir/flags.make
CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.test.cpp
CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o: CMakeFiles/hooke.t.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o -MF CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o.d -o CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.test.cpp

CMakeFiles/hooke.t.dir/source/hooke.test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hooke.t.dir/source/hooke.test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.test.cpp > CMakeFiles/hooke.t.dir/source/hooke.test.cpp.i

CMakeFiles/hooke.t.dir/source/hooke.test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hooke.t.dir/source/hooke.test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.test.cpp -o CMakeFiles/hooke.t.dir/source/hooke.test.cpp.s

CMakeFiles/hooke.t.dir/source/hooke.cpp.o: CMakeFiles/hooke.t.dir/flags.make
CMakeFiles/hooke.t.dir/source/hooke.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp
CMakeFiles/hooke.t.dir/source/hooke.cpp.o: CMakeFiles/hooke.t.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hooke.t.dir/source/hooke.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hooke.t.dir/source/hooke.cpp.o -MF CMakeFiles/hooke.t.dir/source/hooke.cpp.o.d -o CMakeFiles/hooke.t.dir/source/hooke.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp

CMakeFiles/hooke.t.dir/source/hooke.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hooke.t.dir/source/hooke.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp > CMakeFiles/hooke.t.dir/source/hooke.cpp.i

CMakeFiles/hooke.t.dir/source/hooke.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hooke.t.dir/source/hooke.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp -o CMakeFiles/hooke.t.dir/source/hooke.cpp.s

# Object files for target hooke.t
hooke_t_OBJECTS = \
"CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o" \
"CMakeFiles/hooke.t.dir/source/hooke.cpp.o"

# External object files for target hooke.t
hooke_t_EXTERNAL_OBJECTS =

hooke.t: CMakeFiles/hooke.t.dir/source/hooke.test.cpp.o
hooke.t: CMakeFiles/hooke.t.dir/source/hooke.cpp.o
hooke.t: CMakeFiles/hooke.t.dir/build.make
hooke.t: CMakeFiles/hooke.t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable hooke.t"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hooke.t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hooke.t.dir/build: hooke.t
.PHONY : CMakeFiles/hooke.t.dir/build

CMakeFiles/hooke.t.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hooke.t.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hooke.t.dir/clean

CMakeFiles/hooke.t.dir/depend:
	cd /home/francesco/uni/informatica/laboratorio-informatica/lab7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/francesco/uni/informatica/laboratorio-informatica/lab7 /home/francesco/uni/informatica/laboratorio-informatica/lab7 /home/francesco/uni/informatica/laboratorio-informatica/lab7/build /home/francesco/uni/informatica/laboratorio-informatica/lab7/build /home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles/hooke.t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hooke.t.dir/depend

