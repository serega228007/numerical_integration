cmake_minimum_required(VERSION 3.20)
project(num_interg)

add_subdirectory(sciplot)

include_directories(sciplot)

add_executable(main_proj main.cpp func.cpp)
add_executable(test_func main_test.cpp)

target_link_libraries(main_proj PRIVATE sciplot)

enable_testing()
add_test(NAME test_func COMMAND test_func --force-colors -d)