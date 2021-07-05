function getUserInput(msg="")
    print("$msg ")
      try
        return parse(Int128,readline())
      catch
       println("-- Ошибка! Пожалуйста, введите число \n")
       getUserInput(msg)
      end
    end

@enum SphereCalculations calcVolume = 1  calcArea = 2
сhoice = getUserInput("Введите число, соответствующее выбору:"*
                   " $(Int(calcVolume::SphereCalculations)) - рассчитать объем шара"*
                   " $(Int(calcArea::SphereCalculations))  - рассчитать площадь шара");
action = SphereCalculations(сhoice);

# Получаем радиус от пользователя
r = getUserInput("Введите радиус шара:");

if action == calcVolume::SphereCalculations
# Вычисляем объем шара и выврдим результат вычислений на экран
  V = 4/3 * pi * (r^3);
  println("Объем шара равен ", V);
else action == calcArea::SphereCalculations
# Вычисляем площадь шара и выврдим результат вычислений на экран
  S = 4 * pi * (r^2);
  println("Площадь поверхности шара равна ", S);
end;
