/**
*\file main_test.cpp
*Тесты.
*/
#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include "func.h"
#include "func.cpp"

TEST_CASE("func1 check value1"){
    CHECK(func1(0.0) == 7.0);
}

TEST_CASE("func1 check value2"){
    CHECK(func1(-3.0) == -8.0);
}

TEST_CASE("func2 check value"){
    CHECK(func2(0.0) == 5 / (exp(M_PI) - 2));
}

TEST_CASE("func3 throw error"){
    CHECK_THROWS_AS(func3(3.0), std::runtime_error);
}

TEST_CASE("func3 check value"){
    CHECK(func3(1.0) == 0.5);
}

TEST_CASE("func4 throw error (Division by Zero)"){
    CHECK_THROWS_AS(func4(1.0), std::runtime_error);
}

TEST_CASE("func4 throw error (Division by Zero)"){
    CHECK_THROWS_AS(func4(5.0), std::runtime_error);
}

TEST_CASE("func4 throw error (There is no real root of the number)"){
    CHECK_THROWS_AS(func4(2.0), std::runtime_error);
}

TEST_CASE("func4 throw error (There is no real root of the number)"){
    CHECK_THROWS_AS(func4(3.9), std::runtime_error);
}

TEST_CASE("func4 throw error (There is no real root of the number)"){
    CHECK_THROWS_AS(func4(4.99), std::runtime_error);
}

TEST_CASE("check left_rect throw (Division by Zero)"){
    CHECK_THROWS_AS(left_rect(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check left_rect throw (Set a positive value)"){
    CHECK_THROWS_AS(left_rect(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check left_rect throw (Set different value limits)"){
    CHECK_THROWS_AS(left_rect(50, 50, 1000, func1), std::runtime_error);
}

TEST_CASE("check left_rect throw (Division by Zero)"){
    CHECK_THROWS_AS(left_rect(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check left_rect throw (Set a positive value)"){
    CHECK_THROWS_AS(left_rect(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check right_rect throw (Division by Zero)"){
    CHECK_THROWS_AS(right_rect(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check right_rect throw (Set a positive value)"){
    CHECK_THROWS_AS(right_rect(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check right_rect throw (Set different value limits)"){
    CHECK_THROWS_AS(right_rect(50, 50, 1000, func1), std::runtime_error);
}

TEST_CASE("check midle_rect throw (Division by Zero)"){
    CHECK_THROWS_AS(midle_rect(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check midle_rect throw (Set a positive value)"){
    CHECK_THROWS_AS(midle_rect(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check midle_rect throw (Set different value limits)"){
    CHECK_THROWS_AS(midle_rect(50, 50, 1000, func1), std::runtime_error);
}

TEST_CASE("check trapeze throw (Division by Zero)"){
    CHECK_THROWS_AS(trapeze(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check trapeze throw (Set a positive value)"){
    CHECK_THROWS_AS(trapeze(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check trapeze throw (Set different value limits)"){
    CHECK_THROWS_AS(trapeze(50, 50, 1000, func1), std::runtime_error);
}

TEST_CASE("check sympson throw (Division by Zero)"){
    CHECK_THROWS_AS(sympson(1, 2, 0, func1), std::runtime_error);
}

TEST_CASE("check sympson throw (Set a positive value)"){
    CHECK_THROWS_AS(sympson(1, 2, -6, func1), std::runtime_error);
}

TEST_CASE("check sympson throw (Set different value limits)"){
    CHECK_THROWS_AS(sympson(50, 50, 1000, func1), std::runtime_error);
}

TEST_CASE("check plotError throw (Set different value limits)"){
    CHECK_THROWS_AS(plotErrors(func1, 50, 50, 1000, 1000), std::runtime_error);
}