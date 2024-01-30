#!/bin/bash

function is_even() { # Функция, которая проверяет введенное число на четность
     if [ $(($1 % 2)) -eq 0 ]; then # Если число четное
          echo "Your number is even"
     else # Если число нечетное
	  echo "Your number isn't even"
     fi
}

function is_correct() {
     if [[ $1 =~ ^[0-9]+$ ]]; then # Проверка на корректность введенного значения
	  return 0 # Вернем true 
     else
	  echo "ERROR!"
          return 1 # Вернем false
     fi
}

echo "Input integer, please:" 
read number # Запрос на ввод значения

if is_correct $number; then # Вызов функции is_correct()
     is_even $number # Вызываю функцию is_even()
fi
	
