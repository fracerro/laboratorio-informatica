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
CMAKE_SOURCE_DIR = /home/francesco/uni/informatica/laboratorio-informatica/lab5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/francesco/uni/informatica/laboratorio-informatica/lab5/build

# Include any dependencies generated for this target.
include CMakeFiles/statistics.t.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/statistics.t.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/statistics.t.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/statistics.t.dir/flags.make

CMakeFiles/statistics.t.dir/statistics.test.cpp.o: CMakeFiles/statistics.t.dir/flags.make
CMakeFiles/statistics.t.dir/statistics.test.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.test.cpp
CMakeFiles/statistics.t.dir/statistics.test.cpp.o: CMakeFiles/statistics.t.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/statistics.t.dir/statistics.test.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statistics.t.dir/statistics.test.cpp.o -MF CMakeFiles/statistics.t.dir/statistics.test.cpp.o.d -o CMakeFiles/statistics.t.dir/statistics.test.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.test.cpp

CMakeFiles/statistics.t.dir/statistics.test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/statistics.t.dir/statistics.test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.test.cpp > CMakeFiles/statistics.t.dir/statistics.test.cpp.i

CMakeFiles/statistics.t.dir/statistics.test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/statistics.t.dir/statistics.test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.test.cpp -o CMakeFiles/statistics.t.dir/statistics.test.cpp.s

CMakeFiles/statistics.t.dir/statistics.cpp.o: CMakeFiles/statistics.t.dir/flags.make
CMakeFiles/statistics.t.dir/statistics.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.cpp
CMakeFiles/statistics.t.dir/statistics.cpp.o: CMakeFiles/statistics.t.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/statistics.t.dir/statistics.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/statistics.t.dir/statistics.cpp.o -MF CMakeFiles/statistics.t.dir/statistics.cpp.o.d -o CMakeFiles/statistics.t.dir/statistics.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.cpp

CMakeFiles/statistics.t.dir/statistics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/statistics.t.dir/statistics.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.cpp > CMakeFiles/statistics.t.dir/statistics.cpp.i

CMakeFiles/statistics.t.dir/statistics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/statistics.t.dir/statistics.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab5/statistics.cpp -o CMakeFiles/statistics.t.dir/statistics.cpp.s

# Object files for target statistics.t
statistics_t_OBJECTS = \
"CMakeFiles/statistics.t.dir/statistics.test.cpp.o" \
"CMakeFiles/statistics.t.dir/statistics.cpp.o"

# External object files for target statistics.t
statistics_t_EXTERNAL_OBJECTS =

statistics.t: CMakeFiles/statistics.t.dir/statistics.test.cpp.o
statistics.t: CMakeFiles/statistics.t.dir/statistics.cpp.o
statistics.t: CMakeFiles/statistics.t.dir/build.make
statistics.t: CMakeFiles/statistics.t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab5/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable statistics.t"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/statistics.t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/statistics.t.dir/build: statistics.t
.PHONY : CMakeFiles/statistics.t.dir/build

CMakeFiles/statistics.t.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/statistics.t.dir/cmake_clean.cmake
.PHONY : CMakeFiles/statistics.t.dir/clean

CMakeFiles/statistics.t.dir/depend:
	cd /home/francesco/uni/informatica/laboratorio-informatica/lab5/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/francesco/uni/informatica/laboratorio-informatica/lab5 /home/francesco/uni/informatica/laboratorio-informatica/lab5 /home/francesco/uni/informatica/laboratorio-informatica/lab5/build /home/francesco/uni/informatica/laboratorio-informatica/lab5/build /home/francesco/uni/informatica/laboratorio-informatica/lab5/build/CMakeFiles/statistics.t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/statistics.t.dir/depend

