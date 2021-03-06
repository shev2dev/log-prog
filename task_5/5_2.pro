высота('тополь', 'береза').
высота('береза', 'липа').
высота('липа', 'клен').
высота('сосна', 'тополь').
высота('ель','сосна').

высокое(X) :- высота(X, _)
            , not(высота(_, X)).

низкое(X) :- высота(_, X)
           , not(высота(X, _)).

get_solve :- высокое(X), низкое(Y)
           , write('Самое высокое дерево: '), writeln(X)
           , write('Самое низкое дерево: '), writeln(Y).
