/**
* \file func.cpp
* Реализация различных функций и методов численного интегрирования
*/
#include <math.h>
#include <cmath>
#include <functional>
#include <stdexcept>
#include "func.h"
#include "sciplot/sciplot/sciplot.hpp"

double func1(double x) {
  return 5 * x + 7;
}

double func2(double x){
  return 5 / (exp(M_PI) - 2) * exp(2 * x) * cos(x);
}

double func3(double x){
  if (x == 3){
    throw std::runtime_error{"Division by Zero"};
  }
  return 1 / (3 - x);
}

double func4(double x){
  if (x == 1 || x == 5){
    throw std::runtime_error{"Division by Zero"};
  }
  if (1 < x && x < 5){
    throw std::runtime_error{"There is no real root of the number"};
  }
  return 1 / sqrt(x * x - 6 * x + 5); 
}

double left_rect(double a, double b, int n, const std::function <double (double)> &f) {
  if (n == 0){
    throw std::runtime_error{"Division by Zero"};
  }
  if (n < 0){
    throw std::runtime_error{"Set a positive value"};
  }
  if (a == b){
    throw std::runtime_error{"Set different value limits"};
  }
  double h = (b - a) / n;
  double sum{0};
  for (int i{0}; i <= n - 1; ++i) {
    sum += h * f(a + i * h);
  }
  return sum;
}

double right_rect(double a, double b, int n, const std::function <double (double)> &f) {
  if (n == 0){
    throw std::runtime_error{"Division by Zero"};
  }
  if (n < 0){
    throw std::runtime_error{"Set a positive value"};
  }
  if (a == b){
    throw std::runtime_error{"Set different value limits"};
  }
  double h = (b - a) / n;
  double sum{0};
  for (int i{1}; i <= n; ++i) {
    sum += h * f(a + i * h);
  }
  return sum;
}

double midle_rect(double a, double b, int n, const std::function <double (double)> &f) {
  if (n == 0){
    throw std::runtime_error{"Division by Zero"};
  }
  if (n < 0){
    throw std::runtime_error{"Set a positive value"};
  }
  if (a == b){
    throw std::runtime_error{"Set different value limits"};
  }
  double h = (b - a) / n;
  double sum{0};
  for (int i{0}; i <= n - 1; ++i) {
    sum += h * f(a + h / 2 + i * h);
  }
  return sum;
}

double trapeze(double a, double b, int n, const std::function <double (double)> &f) {
  if (n == 0){
    throw std::runtime_error{"Division by Zero"};
  }
  if (n < 0){
    throw std::runtime_error{"Set a positive value"};
  }
  if (a == b){
    throw std::runtime_error{"Set different value limits"};
  }
  double h = (b - a) / n;
  double sum{f(a) + f(b)};
  for (int i{0}; i <= n - 1; ++i) {
    sum += 2 * f(a + i * h);
  }
  sum *= h / 2;
  return sum;
}

double sympson(double a, double b, int n, const std::function <double (double)> &f) {
  if (n == 0){
    throw std::runtime_error{"Division by Zero"};
  }
  if (n < 0){
    throw std::runtime_error{"Set a positive value"};
  }
  if (a == b){
    throw std::runtime_error{"Set different value limits"};
  }
  double h = (b - a) / n;
  double sum{0};
  int k;
  for (int i{0}; i <= n - 1; ++i) {
    k = 2 + 2 * (i % 2);
    sum += k * f(a + i * h);
  }
  sum *= h / 3;
  return sum;
}

void plotErrors(const std::function<double(double)> &f, double a, double b, double exact_value, double err) {
  if (a == b) {
    throw std::runtime_error{"Set different value limits"};
  }

  std::vector<double> h_values;
  std::vector<double> left_errors, right_errors, mid_errors, trap_errors, simp_errors;

  int max_n = err;
  for (int n = 1; n <= max_n; n += 5) {
    double h = (b - a) / n;
    h_values.push_back(h);

    double left_result = left_rect(a, b, n, f);
    double right_result = right_rect(a, b, n, f);
    double mid_result = midle_rect(a, b, n, f);
    double trap_result = trapeze(a, b, n, f);
    double simp_result = sympson(a, b, n, f);

    left_errors.push_back(std::abs(left_result - exact_value));
    right_errors.push_back(std::abs(right_result - exact_value));
    mid_errors.push_back(std::abs(mid_result - exact_value));
    trap_errors.push_back(std::abs(trap_result - exact_value));
    simp_errors.push_back(std::abs(simp_result - exact_value));
  }

  sciplot::Plot2D plot0;
  plot0.xlabel("Error"); 
  plot0.ylabel("Width of Interval (h)");
  plot0.drawCurve(left_errors, h_values).label("Left Rectangles").lineColor("red");

  sciplot::Plot2D plot1;
  plot1.xlabel("Error"); 
  plot1.ylabel("Width of Interval (h)");
  plot1.drawCurve(right_errors, h_values).label("Right Rectangles").lineColor("green");

  sciplot::Plot2D plot2;
  plot2.xlabel("Error"); 
  plot2.ylabel("Width of Interval (h)");
  plot2.drawCurve(mid_errors, h_values).label("Mid Rectangles").lineColor("blue");

  sciplot::Plot2D plot3;
  plot3.xlabel("Error"); 
  plot3.ylabel("Width of Interval (h)");
  plot3.drawCurve(trap_errors, h_values).label("Trapezoidal").lineColor("cyan");

  sciplot::Plot2D plot4;
  plot4.xlabel("Error"); 
  plot4.ylabel("Width of Interval (h)");
  plot4.drawCurve(simp_errors, h_values).label("Simpson").lineColor("magenta");

  sciplot::Figure fig = {{plot0, plot1, plot2, plot3, plot4}};
  std::ostringstream title;
  if (f(0) == func1(0)) {
    title << "Error vs Width of Interval for func1 a = " << a << " b = " << b;
    fig.title(title.str());
    fig.palette("dark2");

    sciplot::Canvas canvas = {{fig}};
    canvas.size(1500, 800);

    canvas.show();
    canvas.save("error_plot_1.pdf");
  } else if (f(0) == func2(0)) {
    title << "Error vs Width of Interval for func2 a = " << a << " b = " << b;
    fig.title(title.str());
    fig.palette("dark2");

    sciplot::Canvas canvas = {{fig}};
    canvas.size(1500, 800);

    canvas.show();
    canvas.save("error_plot_2.pdf");
  } else if (f(0) == func3(0)) {
    title << "Error vs Width of Interval for func3 a = " << a << " b = " << b;
    fig.title(title.str());
    fig.palette("dark2");

    sciplot::Canvas canvas = {{fig}};
    canvas.size(1500, 800);

    canvas.show();
    canvas.save("error_plot_3.pdf");
  } else {
    title << "Error vs Width of Interval for func4 a = " << a << " b = " << b;
    fig.title(title.str());
    fig.palette("dark2");

    sciplot::Canvas canvas = {{fig}};
    canvas.size(1500, 800);

    canvas.show();
    canvas.save("error_plot_4.pdf");
  }
}