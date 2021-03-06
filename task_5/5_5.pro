имя('Юра').
имя('Витя').
имя('Миша').
имя('Дима').

позиция(1).
позиция(2).
позиция(3).
позиция(4).


порядок(X, Y) :- имя(X)
               , позиция(Y)
               , X = 'Дима'
               , not(Y = 4).

порядок(X, Y) :- имя(X)
               , X = 'Юра'
               , позиция(Y)
               , порядок('Дима', Y1)
               , Y > Y1.

порядок(X, Y) :- имя(X)
               , X = 'Витя'
               , позиция(Y)
               , порядок('Юра', Y1)
               , Y > Y1.

порядок(X, Y) :- имя(X)
               , X = 'Миша'
               , позиция(Y)
               , порядок('Витя', Y1)
               , Y > Y1.

решение(X1, X2, X3, X4, Y1, Y2, Y3, Y4) :- порядок(X1, Y1)
                                         , порядок(X2, Y2)
                                         , порядок(X3, Y3)
                                         , порядок(X4, Y4)
                                         , Y1 \= Y2, Y1 \= Y3, Y1 \= Y4
                                         , Y2 \= Y3, Y2 \= Y4
                                         , Y3 \= Y4.


get_solve :- X1 = 'Юра', X2 = 'Витя'
           , X3 = 'Миша', X4 = 'Дима'
           , решение(X1, X2, X3, X4, Y1, Y2, Y3, Y4)
           , write(X1), write(' - '), writeln(Y1)
           , write(X2), write(' - '), writeln(Y2)
           , write(X3), write(' - '), writeln(Y3)
           , write(X4), write(' - '), writeln(Y4).
