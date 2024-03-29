function(project_clean)
    message(STATUS "==> CLEAN Build!")  
    execute_process(
        COMMAND rm -rf CMakeFiles
        COMMAND rm cmake_install.cmake
        COMMAND rm CMakeCache.txt
        COMMAND rm Makefile
        COMMAND rm SDL2_App.exe
    )
endfunction()

# project_clean()

if (WIN32 OR MSYS)
    set (CMAKE_GENERATOR "MSYS Makefiles" CACHE INTERNAL "" FORCE)
    message(STATUS "==> MSYS Makefiles")
        elseif(UNIX)
            set (CMAKE_GENERATOR "Unix Makefiles" CACHE INTERNAL "" FORCE)
            message(STATUS "==> Unix Makefiles")
        else()
            message(FATAL_ERROR "==> This projet buildable only Windows MSYS or Unix/Linux os.")
endif()