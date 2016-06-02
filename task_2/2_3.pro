книга('Пушкин', 'Сказка о царе...', 'Дрофа', 2003).
книга('Пушкин', 'Руслан и Людмила', 'Эксмо', 2010).
книга('Гоголь', 'Мертвые души', 'Эксмо', 2005).
книга('Гоголь', 'Тарас Бульба', 'Дрофа', 2007).
книга('Гоголь', 'Шинель', 'Новая книга', 2015).
книга('Толстой', 'Война и мир', 'Новая книга', 2012).

task_a :- книга(X, Y, Z, C)
        , write(X), write(' ')
        , write(Y), write(' ')
        , write(Z), write(' ')
        , write(C), write(' ')
        , nl, fail.

task_b :- книга(A, B, _, _)
        , (A = 'Пушкин'; A = 'Гоголь')
        , write(A), write(' ')
        , write(B), write(' ')
        , nl, fail.

task_c :- книга(A, B, C, D)
        , (D >= 10; C = 'Дрофа')
        , write(A), write(' ')
        , write(B), write(' ')
        , nl, fail.