#!/bin/bash

correct_password="QWERTY" # Корректный пароль
attempt=5 # Кол-во доступных попыток

while [ $((attempt)) -gt 0 ]; do # Выполняем, пока остались свободные попытки
    echo "Input password" # Сообщение пользователю с просьбой ввода пароля
    read password # Считывание введенного пользователем значения
    ((attempt--)) # Уменьшаем кол-во доступных попыток

    if [ "$password" = "$correct_password" ]; then # Проверка на корректность пароля
	 echo "Welcome!" # Сообщение о входе в систему 
	 break # Выход из цикла (завершение работы программы)
    else
	 echo "Incorrect password! Attempts left: $attempt" # Сообщение об ошибке
	 if [ $((attempt)) = 0 ]; then # Проверка на кол-во оставшихся попыток
	        echo "Access denied!" # Сообщение об отказе
	 fi
    fi
done