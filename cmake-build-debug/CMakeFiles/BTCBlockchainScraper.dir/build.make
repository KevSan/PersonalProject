# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/kevin/clion-2018.1/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/kevin/clion-2018.1/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kevin/CLionProjects/BTCBlockchainScraper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/BTCBlockchainScraper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BTCBlockchainScraper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BTCBlockchainScraper.dir/flags.make

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o: CMakeFiles/BTCBlockchainScraper.dir/flags.make
CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o -c /home/kevin/CLionProjects/BTCBlockchainScraper/main.cpp

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTCBlockchainScraper.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/CLionProjects/BTCBlockchainScraper/main.cpp > CMakeFiles/BTCBlockchainScraper.dir/main.cpp.i

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTCBlockchainScraper.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/CLionProjects/BTCBlockchainScraper/main.cpp -o CMakeFiles/BTCBlockchainScraper.dir/main.cpp.s

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.requires

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.provides: CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/BTCBlockchainScraper.dir/build.make CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.provides

CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.provides.build: CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o


CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o: CMakeFiles/BTCBlockchainScraper.dir/flags.make
CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o: ../BitcoinScraper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o -c /home/kevin/CLionProjects/BTCBlockchainScraper/BitcoinScraper.cpp

CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kevin/CLionProjects/BTCBlockchainScraper/BitcoinScraper.cpp > CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.i

CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kevin/CLionProjects/BTCBlockchainScraper/BitcoinScraper.cpp -o CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.s

CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.requires:

.PHONY : CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.requires

CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.provides: CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.requires
	$(MAKE) -f CMakeFiles/BTCBlockchainScraper.dir/build.make CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.provides.build
.PHONY : CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.provides

CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.provides.build: CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o


# Object files for target BTCBlockchainScraper
BTCBlockchainScraper_OBJECTS = \
"CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o" \
"CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o"

# External object files for target BTCBlockchainScraper
BTCBlockchainScraper_EXTERNAL_OBJECTS =

BTCBlockchainScraper: CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o
BTCBlockchainScraper: CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o
BTCBlockchainScraper: CMakeFiles/BTCBlockchainScraper.dir/build.make
BTCBlockchainScraper: CMakeFiles/BTCBlockchainScraper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable BTCBlockchainScraper"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BTCBlockchainScraper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BTCBlockchainScraper.dir/build: BTCBlockchainScraper

.PHONY : CMakeFiles/BTCBlockchainScraper.dir/build

CMakeFiles/BTCBlockchainScraper.dir/requires: CMakeFiles/BTCBlockchainScraper.dir/main.cpp.o.requires
CMakeFiles/BTCBlockchainScraper.dir/requires: CMakeFiles/BTCBlockchainScraper.dir/BitcoinScraper.cpp.o.requires

.PHONY : CMakeFiles/BTCBlockchainScraper.dir/requires

CMakeFiles/BTCBlockchainScraper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BTCBlockchainScraper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BTCBlockchainScraper.dir/clean

CMakeFiles/BTCBlockchainScraper.dir/depend:
	cd /home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kevin/CLionProjects/BTCBlockchainScraper /home/kevin/CLionProjects/BTCBlockchainScraper /home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug /home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug /home/kevin/CLionProjects/BTCBlockchainScraper/cmake-build-debug/CMakeFiles/BTCBlockchainScraper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BTCBlockchainScraper.dir/depend

