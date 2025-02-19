#!/bin/bash

# input string
read -p "Введите строку: " input_string
read -p "Введите начало диапазона: " start
read -p "Введите конец диапазона: " end

# choice
echo "Выберите действие:"
echo "1. Вывести подстроку"
echo "2. Удалить подстроку"
read -p "Ваш выбор (1 или 2): " choice

# index+1
start=$((start - 1))
end=$((end - 1))

if [ "$choice" -eq 1 ]; then
    # show string
    substring=$(echo "$input_string" | cut -c $((start + 1))-$((end + 1)))
    echo "Результат: $substring"
elif [ "$choice" -eq 2 ]; then
    # delete string and show
    result="${input_string:0:start}${input_string:end+1}"
    echo "Результат: $result"
else
    echo "Неправильный выбор. Пожалуйста, введите 1 или 2."
    exit 1
fi
