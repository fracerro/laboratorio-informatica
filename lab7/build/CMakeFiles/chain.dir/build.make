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
include CMakeFiles/chain.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/chain.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/chain.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chain.dir/flags.make

CMakeFiles/chain.dir/source/main.cpp.o: CMakeFiles/chain.dir/flags.make
CMakeFiles/chain.dir/source/main.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/main.cpp
CMakeFiles/chain.dir/source/main.cpp.o: CMakeFiles/chain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chain.dir/source/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chain.dir/source/main.cpp.o -MF CMakeFiles/chain.dir/source/main.cpp.o.d -o CMakeFiles/chain.dir/source/main.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/main.cpp

CMakeFiles/chain.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chain.dir/source/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/main.cpp > CMakeFiles/chain.dir/source/main.cpp.i

CMakeFiles/chain.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chain.dir/source/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/main.cpp -o CMakeFiles/chain.dir/source/main.cpp.s

CMakeFiles/chain.dir/source/chain.cpp.o: CMakeFiles/chain.dir/flags.make
CMakeFiles/chain.dir/source/chain.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/chain.cpp
CMakeFiles/chain.dir/source/chain.cpp.o: CMakeFiles/chain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/chain.dir/source/chain.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chain.dir/source/chain.cpp.o -MF CMakeFiles/chain.dir/source/chain.cpp.o.d -o CMakeFiles/chain.dir/source/chain.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/chain.cpp

CMakeFiles/chain.dir/source/chain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chain.dir/source/chain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/chain.cpp > CMakeFiles/chain.dir/source/chain.cpp.i

CMakeFiles/chain.dir/source/chain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chain.dir/source/chain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/chain.cpp -o CMakeFiles/chain.dir/source/chain.cpp.s

CMakeFiles/chain.dir/source/hooke.cpp.o: CMakeFiles/chain.dir/flags.make
CMakeFiles/chain.dir/source/hooke.cpp.o: /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp
CMakeFiles/chain.dir/source/hooke.cpp.o: CMakeFiles/chain.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/chain.dir/source/hooke.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/chain.dir/source/hooke.cpp.o -MF CMakeFiles/chain.dir/source/hooke.cpp.o.d -o CMakeFiles/chain.dir/source/hooke.cpp.o -c /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp

CMakeFiles/chain.dir/source/hooke.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chain.dir/source/hooke.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp > CMakeFiles/chain.dir/source/hooke.cpp.i

CMakeFiles/chain.dir/source/hooke.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chain.dir/source/hooke.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/francesco/uni/informatica/laboratorio-informatica/lab7/source/hooke.cpp -o CMakeFiles/chain.dir/source/hooke.cpp.s

# Object files for target chain
chain_OBJECTS = \
"CMakeFiles/chain.dir/source/main.cpp.o" \
"CMakeFiles/chain.dir/source/chain.cpp.o" \
"CMakeFiles/chain.dir/source/hooke.cpp.o"

# External object files for target chain
chain_EXTERNAL_OBJECTS =

chain: CMakeFiles/chain.dir/source/main.cpp.o
chain: CMakeFiles/chain.dir/source/chain.cpp.o
chain: CMakeFiles/chain.dir/source/hooke.cpp.o
chain: CMakeFiles/chain.dir/build.make
chain: CMakeFiles/chain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable chain"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chain.dir/build: chain
.PHONY : CMakeFiles/chain.dir/build

CMakeFiles/chain.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chain.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chain.dir/clean

CMakeFiles/chain.dir/depend:
	cd /home/francesco/uni/informatica/laboratorio-informatica/lab7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/francesco/uni/informatica/laboratorio-informatica/lab7 /home/francesco/uni/informatica/laboratorio-informatica/lab7 /home/francesco/uni/informatica/laboratorio-informatica/lab7/build /home/francesco/uni/informatica/laboratorio-informatica/lab7/build /home/francesco/uni/informatica/laboratorio-informatica/lab7/build/CMakeFiles/chain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chain.dir/depend
