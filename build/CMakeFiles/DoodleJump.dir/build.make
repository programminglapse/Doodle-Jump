# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vidal/Desktop/Games/DoodleJump

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vidal/Desktop/Games/DoodleJump/build

# Include any dependencies generated for this target.
include CMakeFiles/DoodleJump.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DoodleJump.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DoodleJump.dir/flags.make

CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o: ../src/CBackground.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CBackground.cpp

CMakeFiles/DoodleJump.dir/src/CBackground.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CBackground.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CBackground.cpp > CMakeFiles/DoodleJump.dir/src/CBackground.cpp.i

CMakeFiles/DoodleJump.dir/src/CBackground.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CBackground.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CBackground.cpp -o CMakeFiles/DoodleJump.dir/src/CBackground.cpp.s

CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o: ../src/CEnemy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CEnemy.cpp

CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CEnemy.cpp > CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.i

CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CEnemy.cpp -o CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.s

CMakeFiles/DoodleJump.dir/src/CManager.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CManager.cpp.o: ../src/CManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/DoodleJump.dir/src/CManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CManager.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CManager.cpp

CMakeFiles/DoodleJump.dir/src/CManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CManager.cpp > CMakeFiles/DoodleJump.dir/src/CManager.cpp.i

CMakeFiles/DoodleJump.dir/src/CManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CManager.cpp -o CMakeFiles/DoodleJump.dir/src/CManager.cpp.s

CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o: ../src/CModuleInput.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CModuleInput.cpp

CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CModuleInput.cpp > CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.i

CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CModuleInput.cpp -o CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.s

CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o: ../src/CModuleObjectManager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CModuleObjectManager.cpp

CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CModuleObjectManager.cpp > CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.i

CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CModuleObjectManager.cpp -o CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.s

CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o: ../src/CModuleRenderer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CModuleRenderer.cpp

CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CModuleRenderer.cpp > CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.i

CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CModuleRenderer.cpp -o CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.s

CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o: ../src/CModuleTimer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CModuleTimer.cpp

CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CModuleTimer.cpp > CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.i

CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CModuleTimer.cpp -o CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.s

CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o: ../src/CModuleWindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CModuleWindow.cpp

CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CModuleWindow.cpp > CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.i

CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CModuleWindow.cpp -o CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.s

CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o: ../src/CPlayer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CPlayer.cpp

CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CPlayer.cpp > CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.i

CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CPlayer.cpp -o CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.s

CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o: ../src/CTexture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/CTexture.cpp

CMakeFiles/DoodleJump.dir/src/CTexture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/CTexture.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/CTexture.cpp > CMakeFiles/DoodleJump.dir/src/CTexture.cpp.i

CMakeFiles/DoodleJump.dir/src/CTexture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/CTexture.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/CTexture.cpp -o CMakeFiles/DoodleJump.dir/src/CTexture.cpp.s

CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o: ../src/SDL_FontCache.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/SDL_FontCache.cpp

CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/SDL_FontCache.cpp > CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.i

CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/SDL_FontCache.cpp -o CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.s

CMakeFiles/DoodleJump.dir/src/main.cpp.o: CMakeFiles/DoodleJump.dir/flags.make
CMakeFiles/DoodleJump.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/DoodleJump.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/DoodleJump.dir/src/main.cpp.o -c /home/vidal/Desktop/Games/DoodleJump/src/main.cpp

CMakeFiles/DoodleJump.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DoodleJump.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vidal/Desktop/Games/DoodleJump/src/main.cpp > CMakeFiles/DoodleJump.dir/src/main.cpp.i

CMakeFiles/DoodleJump.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DoodleJump.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vidal/Desktop/Games/DoodleJump/src/main.cpp -o CMakeFiles/DoodleJump.dir/src/main.cpp.s

# Object files for target DoodleJump
DoodleJump_OBJECTS = \
"CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CManager.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o" \
"CMakeFiles/DoodleJump.dir/src/main.cpp.o"

# External object files for target DoodleJump
DoodleJump_EXTERNAL_OBJECTS =

DoodleJump: CMakeFiles/DoodleJump.dir/src/CBackground.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CEnemy.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CManager.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CModuleInput.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CModuleObjectManager.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CModuleRenderer.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CModuleTimer.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CModuleWindow.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CPlayer.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/CTexture.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/SDL_FontCache.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/src/main.cpp.o
DoodleJump: CMakeFiles/DoodleJump.dir/build.make
DoodleJump: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
DoodleJump: CMakeFiles/DoodleJump.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable DoodleJump"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DoodleJump.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DoodleJump.dir/build: DoodleJump

.PHONY : CMakeFiles/DoodleJump.dir/build

CMakeFiles/DoodleJump.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DoodleJump.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DoodleJump.dir/clean

CMakeFiles/DoodleJump.dir/depend:
	cd /home/vidal/Desktop/Games/DoodleJump/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vidal/Desktop/Games/DoodleJump /home/vidal/Desktop/Games/DoodleJump /home/vidal/Desktop/Games/DoodleJump/build /home/vidal/Desktop/Games/DoodleJump/build /home/vidal/Desktop/Games/DoodleJump/build/CMakeFiles/DoodleJump.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DoodleJump.dir/depend
