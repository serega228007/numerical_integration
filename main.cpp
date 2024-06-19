/**
*\file main.cpp
*Главный файл с выводом всех графиков.
*/
#include <iostream>
#include <cmath>
#include "func.h"

int main() {
    double a, b, c{0}, d{M_PI / 2}, e, f, g, h;
    double err_f1, err_f2, err_f3, err_f4;
    std::cout << "Specify the limits of integration for f(x) = 5x + 7: " << std::endl;
    std::cout << "lower bound is" << std::endl;
    std::cin >> a;
    std::cout << "upper bound is" << std::endl;
    std::cin >> b;
    std::cout << "number of partitions is" << std::endl;
    std::cin >> err_f1;
    std::cout << "Specify the limits of integration for f(x) = 5 / (exp(PI) - 2) * exp(2 * x) * cos(x):" << std::endl;
    std::cout << "lower bound is" << std::endl;
    std::cout << c << std::endl;
    std::cout << "upper bound is" << std::endl;
    std::cout << d << std::endl;
    std::cout << "number of partitions is" << std::endl;
    std::cin >> err_f2;
    std::cout << "Specify the limits of integration for f(x) = 1 / (3 - x): " << std::endl;
    std::cout << "lower bound is" << std::endl;
    std::cin >> e;
    std::cout << "upper bound is" << std::endl;
    std::cin >> f;
    std::cout << "number of partitions is" << std::endl;
    std::cin >> err_f3;
    std::cout << "Specify the limits of integration for f(x) = 1 / sqrt(x * x - 6 * x + 5): " << std::endl;
    std::cout << "lower bound is" << std::endl;
    std::cin >> g;
    std::cout << "upper bound is" << std::endl;
    std::cin >> h;
    std::cout << "number of partitions is" << std::endl;
    std::cin >> err_f4;

    double exact_value1 = 5 * (b * b - a * a) / 2 + 7 * (b - a);
    double exact_value2 = 1;
    double exact_value3 = log(abs(3 - e)) - log(abs(3 - f));
    double exact_value4 = log(abs(h - 3 + sqrt(h * h - 6 * h + 5))) - log(abs(g - 3 + sqrt(g * g - 6 * g + 5)));

    plotErrors(func1, a, b, exact_value1, err_f1);
    plotErrors(func2, c, d, exact_value2, err_f2);
    plotErrors(func3, e, f, exact_value3, err_f3);
    plotErrors(func4, g, h, exact_value4, err_f4);

    return 0;
}