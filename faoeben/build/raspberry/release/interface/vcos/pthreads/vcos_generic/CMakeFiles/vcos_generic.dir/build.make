# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/pew

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/pew/build/raspberry/release

# Include any dependencies generated for this target.
include interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/depend.make

# Include the progress variables for this target.
include interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/progress.make

# Include the compile flags for this target's objects.
include interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o: ../../../interface/vcos/generic/vcos_generic_event_flags.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_generic_event_flags.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_generic_event_flags.c > CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_generic_event_flags.c -o CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o: ../../../interface/vcos/generic/vcos_mem_from_malloc.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_mem_from_malloc.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_mem_from_malloc.c > CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_mem_from_malloc.c -o CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o: ../../../interface/vcos/generic/vcos_generic_named_sem.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_generic_named_sem.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_generic_named_sem.c > CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_generic_named_sem.c -o CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o: ../../../interface/vcos/generic/vcos_generic_reentrant_mtx.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_generic_reentrant_mtx.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_generic_reentrant_mtx.c > CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_generic_reentrant_mtx.c -o CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o: ../../../interface/vcos/generic/vcos_abort.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_abort.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_abort.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_abort.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_abort.c > CMakeFiles/vcos_generic.dir/vcos_abort.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_abort.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_abort.c -o CMakeFiles/vcos_generic.dir/vcos_abort.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o: ../../../interface/vcos/generic/vcos_msgqueue.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_msgqueue.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_msgqueue.c > CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_msgqueue.c -o CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/flags.make
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o: ../../../interface/vcos/generic/vcos_logcat.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/pew/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcos_generic.dir/vcos_logcat.c.o   -c /home/pi/pew/interface/vcos/generic/vcos_logcat.c

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcos_generic.dir/vcos_logcat.c.i"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/pew/interface/vcos/generic/vcos_logcat.c > CMakeFiles/vcos_generic.dir/vcos_logcat.c.i

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcos_generic.dir/vcos_logcat.c.s"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/pew/interface/vcos/generic/vcos_logcat.c -o CMakeFiles/vcos_generic.dir/vcos_logcat.c.s

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.requires:
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.provides: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.requires
	$(MAKE) -f interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.provides.build
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.provides

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.provides.build: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o

# Object files for target vcos_generic
vcos_generic_OBJECTS = \
"CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_abort.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o" \
"CMakeFiles/vcos_generic.dir/vcos_logcat.c.o"

# External object files for target vcos_generic
vcos_generic_EXTERNAL_OBJECTS =

interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build.make
interface/vcos/pthreads/vcos_generic/libvcos_generic.a: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library libvcos_generic.a"
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && $(CMAKE_COMMAND) -P CMakeFiles/vcos_generic.dir/cmake_clean_target.cmake
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vcos_generic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build: interface/vcos/pthreads/vcos_generic/libvcos_generic.a
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/build

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_event_flags.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_mem_from_malloc.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_named_sem.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_generic_reentrant_mtx.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_abort.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_msgqueue.c.o.requires
interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires: interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/vcos_logcat.c.o.requires
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/requires

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/clean:
	cd /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic && $(CMAKE_COMMAND) -P CMakeFiles/vcos_generic.dir/cmake_clean.cmake
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/clean

interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/depend:
	cd /home/pi/pew/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/pew /home/pi/pew/interface/vcos/generic /home/pi/pew/build/raspberry/release /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic /home/pi/pew/build/raspberry/release/interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/vcos/pthreads/vcos_generic/CMakeFiles/vcos_generic.dir/depend
