cmake_minimum_required(VERSION 2.8.3)
project(roslisp_executable_tests)

find_package(catkin REQUIRED COMPONENTS roslisp)

catkin_package()
include_directories(${catkin_INCLUDE_DIRS})

add_lisp_executable(talker roslisp-executable-tests roslisp-executable-tests::talker)