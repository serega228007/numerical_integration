/**
*\file func.h
*Файл с заголовками.
*/
#ifndef FUNC_H
#define FUNC_H 
#include <functional>

/**
* Линейная функция 5x + 7.
* \param[in] x Входное значение.
* \return Результат функции.
*/
double func1(double x);

/**
* Экспоненциальная и тригонометрическая функция.
* \param[in] x Входное значение.
* \return Результат функции.
*/
double func2(double x);

/**
* Гиперболлическая функция.
* \param[in] x Входное значение.
* \return Результат функции.
* \throws std::runtime_error Если x равно 3 (деление на ноль).
*/
double func3(double x);

/**
* Функция с особенностями при x = 1 и x = 5.
* \param[in] x Входное значение.
* \return Результат функции.
* \throws std::runtime_error Если x равно 1 или 5 (деление на ноль) или если x находится между 1 и 5 (нет действительного корня).
*/
double func4(double x);

/**
* Метод левых прямоугольников для численного интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] n Количество интервалов.
* \param[in] f Функция для интегрирования.
* \return Приближенный интеграл функции f от a до b.
* \throws std::runtime_error Если n равно нулю или отрицательное, или если a равно b.
*/
double left_rect(double a, double b, int n, const std::function <double (double)> &f);

/**
* Метод правых прямоугольников для численного интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] n Количество интервалов.
* \param[in] f Функция для интегрирования.
* \return Приближенный интеграл функции f от a до b.
* \throws std::runtime_error Если n равно нулю или отрицательное, или если a равно b.
*/
double right_rect(double a, double b, int n, const std::function <double (double)> &f);

/**
* Метод средних прямоугольников для численного интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] n Количество интервалов.
* \param[in] f Функция для интегрирования.
* \return Приближенный интеграл функции f от a до b.
* \throws std::runtime_error Если n равно нулю или отрицательное, или если a равно b.
*/
double midle_rect(double a, double b, int n, const std::function <double (double)> &f);

/**
* Метод трапеций для численного интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] n Количество интервалов.
* \param[in] f Функция для интегрирования.
* \return Приближенный интеграл функции f от a до b.
* \throws std::runtime_error Если n равно нулю или отрицательное, или если a равно b.
*/
double trapeze(double a, double b, int n, const std::function <double (double)> &f);

/**
* Метод Симпсона для численного интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] n Количество интервалов.
* \param[in] f Функция для интегрирования.
* \return Приближенный интеграл функции f от a до b.
* \throws std::runtime_error Если n равно нулю или отрицательное, или если a равно b.
*/
double sympson(double a, double b, int n, const std::function <double (double)> &f);

/**
* Построение графиков ошибок различных методов численного интегрирования.
* \param[in] f Функция для интегрирования.
* \param[in] a Нижний предел интегрирования.
* \param[in] b Верхний предел интегрирования.
* \param[in] exact_value Точное значение интеграла для сравнения.
* \param[in] err Верхняя граница количества разбиений.
* \throws std::runtime_error Если a равно b.
*/
void plotErrors(const std::function <double (double)> &f, double a, double b, double exact_value, double err);
#endif