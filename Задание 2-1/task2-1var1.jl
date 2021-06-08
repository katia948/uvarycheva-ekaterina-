function getUserInput(msg="")
    print("$msg ")
      try
        return parse(Float64,readline())
      catch
       println("-- Ошибка! Пожалуйста, введите число \n")
       getUserInput(msg)
      end

# Определить тип перечисления
@enum площядьшара=1обьемшара=2  
end

# Получаем данные от пользователя
r = getUserInput("Введите радиус шара \n\n");

# Вычисляем объем шара
V = 4/3 * pi * (r^3);

# Вычисляем площадь шара
S = 4 * pi * (r^2);

# Выводим результаты вычислений на экран
println("Площадь поверхности шара равна ", S);
println("Объем шара равен ", V);
