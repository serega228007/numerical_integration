# CMake generated Testfile for 
# Source directory: C:/numerical_integration
# Build directory: C:/numerical_integration/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[test_func]=] "C:/numerical_integration/build/test_func.exe" "--force-colors" "-d")
set_tests_properties([=[test_func]=] PROPERTIES  _BACKTRACE_TRIPLES "C:/numerical_integration/CMakeLists.txt;14;add_test;C:/numerical_integration/CMakeLists.txt;0;")
subdirs("sciplot")
