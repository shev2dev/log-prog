увлекается('Миша', 'гитара').
увлекается('Маша', 'арфа').
увлекается('Рома', 'футбол').
увлекается('Таня', 'лыжи').

спорт('футбол').
спорт('лыжи').

музыкальный_инструмент('арфа').
музыкальный_инструмент('гитара').

спортсмен :- увлекается(X, Y), спорт(Y)
           , write(X), write(' ')
           , write(Y), nl, fail.

музыкант :- увлекается(X, Y), музыкальный_инструмент(Y)
          , write(X), write(' ')
          , write(Y), nl, fail.
