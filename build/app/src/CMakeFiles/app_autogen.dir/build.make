# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Users/dmushynska/.brew/Cellar/cmake/3.18.2/bin/cmake

# The command to remove a file.
RM = /Users/dmushynska/.brew/Cellar/cmake/3.18.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/dmushynska/Desktop/utag

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/dmushynska/Desktop/utag/build

# Utility rule file for app_autogen.

# Include the progress variables for this target.
include app/src/CMakeFiles/app_autogen.dir/progress.make

app/src/CMakeFiles/app_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/dmushynska/Desktop/utag/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC and UIC for target app"
	cd /Users/dmushynska/Desktop/utag/build/app/src && /Users/dmushynska/.brew/Cellar/cmake/3.18.2/bin/cmake -E cmake_autogen /Users/dmushynska/Desktop/utag/build/app/src/CMakeFiles/app_autogen.dir/AutogenInfo.json ""

app_autogen: app/src/CMakeFiles/app_autogen
app_autogen: app/src/CMakeFiles/app_autogen.dir/build.make

.PHONY : app_autogen

# Rule to build all files generated by this target.
app/src/CMakeFiles/app_autogen.dir/build: app_autogen

.PHONY : app/src/CMakeFiles/app_autogen.dir/build

app/src/CMakeFiles/app_autogen.dir/clean:
	cd /Users/dmushynska/Desktop/utag/build/app/src && $(CMAKE_COMMAND) -P CMakeFiles/app_autogen.dir/cmake_clean.cmake
.PHONY : app/src/CMakeFiles/app_autogen.dir/clean

app/src/CMakeFiles/app_autogen.dir/depend:
	cd /Users/dmushynska/Desktop/utag/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/dmushynska/Desktop/utag /Users/dmushynska/Desktop/utag/app/src /Users/dmushynska/Desktop/utag/build /Users/dmushynska/Desktop/utag/build/app/src /Users/dmushynska/Desktop/utag/build/app/src/CMakeFiles/app_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/src/CMakeFiles/app_autogen.dir/depend

