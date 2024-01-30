#!/bin/bash

fill_array() { # Функция для заполнения массива случайными числами
    local size=$1 # Переменная принимает значение введенного размера массива
    local index=0 # Индекс массива

    while [ $index -lt $size ]; do # Пробегаемся по элементам массива
        array[$index]=$((RANDOM % 100)) # Генерируем число и заполняем массив
        index=$((index + 1)) # Увеличиваем индекс 
    done
}

print_array() { # Функция для вывода элементов массива
    local index=0 # Индекс массива

    while [ $index -lt ${#array[@]} ]; do # Пробегаемся по элементам массива
        echo -n "${array[$index]} " # Выводим элемент массива
        index=$((index + 1)) # Увеличиваем индекс 
    done

    echo
}

array_size=5 # Размер массива
fill_array $array_size # Заполняем массив длины array_size случайными числами 
echo "New array:"
print_array # Выводим полученные значения