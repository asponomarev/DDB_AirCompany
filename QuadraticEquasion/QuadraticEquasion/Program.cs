using System;

namespace QuadraticEquasion
{
    /**
        @brief Главный класс  

        Данный класс содержит основную функцию.
    */
    class Program
    {
        /**
        @brief Главная функция
        
        Точка входа в программу      
        */
        static void Main()
        {
            QuadEq();
        }

        /**
        @brief Функция, организующая процесс вычисления корней квадратного уравнения.
        
        Данная функция в цикле осуществляет получение данных,
        передачу полученных данных на проверку и
        передачу корректных данных на вычисление.       
        */
        public static void QuadEq()
        {
            string args = Console.ReadLine();

            while (args != "quit")
            {
                if (Helper.CheckArgs(args))
                {
                    Helper.FindRoots(args);
                }
                else
                {
                    Console.WriteLine("Incorrect arguments");
                }

                Console.WriteLine();
                args = Console.ReadLine();
            }
        }

    }

}
