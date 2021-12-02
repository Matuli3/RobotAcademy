O TESTE
-------
Automatizovany test case '100 Adding and removing items from cart' testuje pridavanie produktov na webovej stranke Heureka.sk a ich odoberanie z nakupneho kosika, za pomoci Robot Frameworku a Selenium Library.

Autor: Lenka Neslusanova
Kontakt: lenka.neslusanova@artinsolutions.com

           ___
          |_|_|
          |_|_|              _____
          |_|_|     ____    |*_*_*|
 _______   _\__\___/ __ \____|_|_   _______
/ ____  |=|      \  <_+>  /      |=|  ____ \
~|    |\|=|======\\______//======|=|/|    |~
 |_   |    \      | ROBOT|      /    |    |
  \==-|     \    |FRAMEWORK|   /     |----|~~/
  |   |      |    |SKUSKA|    |      |____/~/
  |   |       \____\____/____/      /    / /
  |   |         {----------}       /____/ /
  |___|        /~~~~~~~~~~~~\     |_/~|_|/
   \_/        |/~~~~~||~~~~~\|     /__|\
   | |         |    ||||    |     (/|| \)
   | |        /     |  |     \       \\
   |_|        |     |  |     |
              |_____|  |_____|
              (_____)  (_____)
              |     |  |     |
              |     |  |     |
              |/~~~\|  |/~~~\|
              /|___|\  /|___|\
             <_______><_______>


PRIPRAVA PROSTREDIA
--------------------
Potrebne sucasti k spusteniu test suboru su uvedene v subore "requirements.txt". Nainstalovat ich mozno spustenim prikazu:
pip install -r requirements.txt

Do root priecinku projektu je potrebne umiestnit subor chromedriver.exe, ktory v zavislosti od pouzivanej verzie Chromu a pouzivaneho OS mozno stiahnut tu:
https://chromedriver.chromium.org/downloads
Stiahnuty .exe subor je potrebne nakopirovat do projektoveho priecinku (vid. dalej priecinok TAA_EXAM).


INSTALACIA
----------
(1) Zo zdielaneho repozitara je potrebne stiahnut priecinok TAA_EXAM. Priecinok by mal obsahovat nasledujuce subory:
- exam.robot
- exam_kw.robot
- exam_variables.robot
- requirements.txt
(2) Subor exam.robot obsahujuci automatizovany test case sa spusta z projektoveho priecinku TAA_EXAM prikazom:
robot exam.robot