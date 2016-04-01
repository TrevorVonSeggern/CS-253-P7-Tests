cmake_minimum_required(VERSION 2.8)

project(CHECK)

add_definitions(-std=gnu++11)

set(CHECK_SOURCE_FILES
		ResultChecker/main.cpp ResultChecker/fileReader.cpp ResultChecker/fileReader.h
		)
add_executable(check ${CHECK_SOURCE_FILES})
