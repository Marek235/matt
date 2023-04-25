# Wprowadzenie do Systemów Wizyjnych

## Symulacja w Matlabie
Celem zadania jest stworzenie układu z obiektem oscylacyjnym oraz regulatorem PI w pętli ujemnego sprzężenia zwrotnego.

Na początku stworzyłem symulację w matlabie, aby wiedzieć jak ma się zachowywwać obiekt w układzie regulacji.

Dany jest obiekt oscylacyjny o transmitancji G(s)=4/(4*s^2+2+1)

<p align="center">
  <img width="623" height="375" src="./readme_files/obiekt_bez_regulatora.png">
</p>

<p align="center">
  <img width="623" height="375" src="./readme_files/obiekt_z_regulatorem.png">
</p>


## Implementacja układu w programie Codesys

Następnie zaimplementowałem cały układ w darmowym programie Codesys.

<p align="center">
  <img width="623" height="375" src="./readme_files/main_plc.png">
</p>

<p align="center">
  <img width="623" height="375" src="./readme_files/wynik_końcowy.png">
</p>
