# SQL-correlation-calculation
Требовалось посчитать корреляцию между количеством решаемых задач и количеством решаемых тестов в течение каждого дня пользователями 

Ход решения:  
1)Посчитали, сколько тестов решалось с разбивкой по дням (teststart)  

2)Посчитали, сколько задач решалось с разбивкой по дням (coderun + codesubmit)  

3)Сопоставили эти наборы данных по дате  

4)Соединили полученные таблици с помощью full join, чтобы избежать пропусков в обоих таблицах  

5)Посчитали корреляцию  

