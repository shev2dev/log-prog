любит('Таня', 'яблоки').
любит('Сергей', 'бананы').
любит('Андрей', 'яблоки').
любит('Света', 'карамель').
любит('Вова', 'карамель').
любит('Таня', 'халва').
любит('Света', 'апельсины').
любит('Вова', 'бананы').


task_a :- findall(X, любит(X, 'бананы'), L),  writeln(L).
task_b :- findall(X, (любит(X, 'халва'), любит(X, 'яблоки')), L), writeln(L).
task_c :- findall(X, любит('Вова', X), L), writeln(L).
task_d :- findall(X,(любит('Света', X), любит('Вова', X)), L), writeln(L).
