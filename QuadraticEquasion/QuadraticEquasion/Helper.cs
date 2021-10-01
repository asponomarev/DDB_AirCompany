using System;

namespace QuadraticEquasion
{
    /**
        @brief Вспомогательный класс
        
        Данный класс содержит методы для проверки корректности полученных данных
        и проведения вычислений с корректными данными.
    */
    class Helper
    {
        /**
        @brief Функция проверки полученных данных на корректность
        
        Данная функция проверку того, что введенные данные
        являются коэффициентами квадратного уравнения.

        @param Строка с аргументами
        @return Являются ли введенные данные корректными
        */
        public static bool CheckArgs(string args)
        {
            string[] parts = args.Split();
            double d;

            if (parts.Length == 3 &&
                double.TryParse(parts[0], out d) &&
                double.Parse(parts[0]) != 0 &&
                double.TryParse(parts[1], out d) &&
                double.TryParse(parts[2], out d))
            {
                return true;
            }

            return false;
        }

        /**
        @brief Функция, выполняющая вычисления
      
        Данная функция отвечает за вычисление
        корней квадратного уравнения.
        
        @param Строка с аргументами
        */
        public static void FindRoots(string args)
        {
            string[] parts = args.Split();
            double a = double.Parse(parts[0]);
            double b = double.Parse(parts[1]);
            double c = double.Parse(parts[2]);

            double d = b * b - 4 * a * c;

            if (d < 0)
            {
                Console.WriteLine("No roots");
            }
            else
            {
                if (d == 0)
                {
                    double x = -b / (2 * a);
                    Console.WriteLine("x = " + x.ToString());
                }
                else
                {
                    double x1 = (-b + d) / (2 * a);
                    double x2 = (-b - d) / (2 * a);
                    Console.WriteLine("x1 = " + x1.ToString() + ", x2 = " + x2.ToString());
                }
            }
        }

    }

}
