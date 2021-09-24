function getUserChoice(msg="")
    print("$msg ")
    userInput = readline()
        # Проверяем, что выбран вариант '1' или '2' с помощью регулярного выражения
        if occursin(r"^[12]", userInput) == true
          return parse(Int128,userInput)
        else
          println("-- Ошибка! Пожалуйста, введите '1' или '2'")
          getUserChoice(msg)
        end
    end

function getUserRadius(msg="")
    print("$msg ")
    userInput = readline()
        # Проверяем, что введенный радиус положительный с помощью регулярного выражения
        if occursin(r"^\d+([.]\d+)?$", userInput) == true
          return parse(Float64,userInput)
        else
          println("-- Ошибка! Радиус должен быть >= 0")
          getUserRadius(msg)
        end
    end


@enum SphereCalculations calcVolume = 1  calcArea = 2
сhoice = getUserChoice("Введите число, соответствующее выбору:"*
                  " $(Int(calcVolume::SphereCalculations)) - рассчитать объем шара"*
                  " $(Int(calcArea::SphereCalculations))  - рассчитать площадь шара");
action = SphereCalculations(сhoice);

r = getUserRadius("Введите радиус шара:");

if action == calcVolume::SphereCalculations
  # Вычисляем объем шара и выврдим результат вычислений на экран
  V = 4/3 * pi * (r^3);
  println("Объем шара равен ", V);
else action == calcArea::SphereCalculations
  # Вычисляем площадь шара и выврдим результат вычислений на экран
  S = 4 * pi * (r^2);
  println("Площадь поверхности шара равна ", S);
end;
