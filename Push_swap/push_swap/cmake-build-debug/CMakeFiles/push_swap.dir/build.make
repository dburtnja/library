# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.6

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2016.3.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2016.3.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/push_swap.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/push_swap.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/push_swap.dir/flags.make

CMakeFiles/push_swap.dir/main.c.obj: CMakeFiles/push_swap.dir/flags.make
CMakeFiles/push_swap.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/push_swap.dir/main.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\push_swap.dir\main.c.obj   -c C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\main.c

CMakeFiles/push_swap.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/push_swap.dir/main.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\main.c > CMakeFiles\push_swap.dir\main.c.i

CMakeFiles/push_swap.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/push_swap.dir/main.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\main.c -o CMakeFiles\push_swap.dir\main.c.s

CMakeFiles/push_swap.dir/main.c.obj.requires:

.PHONY : CMakeFiles/push_swap.dir/main.c.obj.requires

CMakeFiles/push_swap.dir/main.c.obj.provides: CMakeFiles/push_swap.dir/main.c.obj.requires
	$(MAKE) -f CMakeFiles\push_swap.dir\build.make CMakeFiles/push_swap.dir/main.c.obj.provides.build
.PHONY : CMakeFiles/push_swap.dir/main.c.obj.provides

CMakeFiles/push_swap.dir/main.c.obj.provides.build: CMakeFiles/push_swap.dir/main.c.obj


CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj: CMakeFiles/push_swap.dir/flags.make
CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj: ../find_sort_algorithm.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\push_swap.dir\find_sort_algorithm.c.obj   -c C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\find_sort_algorithm.c

CMakeFiles/push_swap.dir/find_sort_algorithm.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/push_swap.dir/find_sort_algorithm.c.i"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\find_sort_algorithm.c > CMakeFiles\push_swap.dir\find_sort_algorithm.c.i

CMakeFiles/push_swap.dir/find_sort_algorithm.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/push_swap.dir/find_sort_algorithm.c.s"
	C:\MinGW\bin\gcc.exe  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\find_sort_algorithm.c -o CMakeFiles\push_swap.dir\find_sort_algorithm.c.s

CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.requires:

.PHONY : CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.requires

CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.provides: CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.requires
	$(MAKE) -f CMakeFiles\push_swap.dir\build.make CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.provides.build
.PHONY : CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.provides

CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.provides.build: CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj


# Object files for target push_swap
push_swap_OBJECTS = \
"CMakeFiles/push_swap.dir/main.c.obj" \
"CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj"

# External object files for target push_swap
push_swap_EXTERNAL_OBJECTS =

push_swap.exe: CMakeFiles/push_swap.dir/main.c.obj
push_swap.exe: CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj
push_swap.exe: CMakeFiles/push_swap.dir/build.make
push_swap.exe: C:/Users/Denys/Documents/GitHub/UNIT/Push_swap/lib/libget_nex_line.a
push_swap.exe: CMakeFiles/push_swap.dir/linklibs.rsp
push_swap.exe: CMakeFiles/push_swap.dir/objects1.rsp
push_swap.exe: CMakeFiles/push_swap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable push_swap.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\push_swap.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/push_swap.dir/build: push_swap.exe

.PHONY : CMakeFiles/push_swap.dir/build

CMakeFiles/push_swap.dir/requires: CMakeFiles/push_swap.dir/main.c.obj.requires
CMakeFiles/push_swap.dir/requires: CMakeFiles/push_swap.dir/find_sort_algorithm.c.obj.requires

.PHONY : CMakeFiles/push_swap.dir/requires

CMakeFiles/push_swap.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\push_swap.dir\cmake_clean.cmake
.PHONY : CMakeFiles/push_swap.dir/clean

CMakeFiles/push_swap.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug C:\Users\Denys\Documents\GitHub\UNIT\Push_swap\push_swap\cmake-build-debug\CMakeFiles\push_swap.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/push_swap.dir/depend

