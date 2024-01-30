#!/bin/bash

echo "Input integer, please:" # Сообщение с просьбой ввода целого числа
read number # Считывание введенного значения 

if [[ $number =~ ^[0-9]+$ ]]; then # Проверка на корректность введенного значения
     if [ $((number % 2)) -eq 0 ]; then # Проверка на четность числа
        echo "Your number is even" # Информирование о четности
     else
        echo "Your number isn't even" # Информирование о нечетности
     fi
else
     echo "ERROR!" # Сообщение о некорректности введенной переменной
fi
