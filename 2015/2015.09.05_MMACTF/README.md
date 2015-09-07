Link http://uecmma.github.io/mmactf/

Smart Cipher System http://score.mmactf.link/problems/3?locale=en
Decrypt 4 flags.

ФЛАГ 1 (10 очков)
36 36 2a 64 4b 4b 4a 21 1e 4b 1f 20 1f 21 4d 4b 1b 1d 19 4f 21 4c 1d 4a 4e 1c 4c 1b 22 4f 22 22 1b 21 4c 20 1d 4f 1f 4c 4a 19 22 1a 66
http://bow.chal.mmactf.link/~scs/crypt2.cgi
Здесь все просто. Все флаги начинаются с MMA{ Видим, что 36 36 2a 64 соотвествует паттерну.
Проверям с 1111. Получаем на выходе 1a 1a 1a 1a. Значит никаких сдвигов нет в зависимости от позции нет.
В шестнадцатеричной системе код 1 = 31. Берем калькулятор, 31-1a=17. Сдвиг равен 17. 
Открываем Winhex (ну или что удобнее и где можно прибавить 17 в HEX) и прибавляем к
36 36 2a 64 4b 4b 4a 21 1e 4b 1f 20 1f 21 4d 4b 1b 1d 19 4f 21 4c 1d 4a 4e 1c 4c 1b 22 4f 22 22 1b 21 4c 20 1d 4f 1f 4c 4a 19 22 1a 66
17 (Edit->Modify Data->Add 17 (check hexadec.)) и получаем первый флаг
MMA{bba85b6768db240f8c4ae3c29f9928c74f6ca091}

ФЛАГ 2 (10 очков)
e3 e3 83 21 33 96 23 43 ef 9a 9a 05 18 c7 23 07 07 07 c7 9a 04 33 23 07 23 ef 12 c7 04 96 43 23 23 18 04 04 05 c7 fb 18 96 43 ef 43 ff
http://bow.chal.mmactf.link/~scs/crypt4.cgi

ФЛАГ 3 (30 очков)
60 00 0c 3a 1e 52 02 53 02 51 0c 5d 56 51 5a 5f 5f 5a 51 00 05 53 56 0a 5e 00 52 05 03 51 50 55 03 04 52 04 0f 0f 54 52 57 03 52 04 4e
http://bow.chal.mmactf.link/~scs/crypt5.cgi