# Regulacja wartości zadanej obiektu oscylacyjnego

## Symulacja w Matlabie
Celem zadania jest stworzenie układu z obiektem oscylacyjnym oraz regulatorem PI w pętli ujemnego sprzężenia zwrotnego.

Na początku stworzyłem symulację w matlabie, aby wiedzieć jak ma się zachowywwać obiekt w układzie regulacji.

Dany jest obiekt oscylacyjny o transmitancji G(s)=4/(4*s^2+2+1). Aby zaimplementować go w programie należy go najpierw zdyskretyzować. Metoda użyta w projekcie to ZOH (Zero Order Hold). Otrzymane równanie różnicowe to: y(n) = y(n-1). Równanie różnicowe obiektu znajduje się w funkcji w pliku xxx.m, natomiast równanie różnicowe regulatora PI znajduje się w funkcji w pliku  yyy.m.

W Simulinku udało mi się otrzymać następujące wartości dla regulatora PI. Dla części całkującej (I) k_i=0.09 (??), część proporcjonalna wynosi kp=0.1 ??.

<p align="center">
  <img width="623" height="375" src="./readme_files/obiekt_bez_regulatora.png">
</p>

<p align="center">
  <img width="623" height="375" src="./readme_files/obiekt_z_regulatorem.png">
</p>


## Implementacja układu w programie Codesys

Następnie zaimplementowałem cały układ w darmowym programie Codesys.

Poniżej znajduje się odpowiedź samego obiektu.

<p align="center">
  <img width="623" height="375" src="./readme_files/main_plc.png">
</p>

W celu regulacji obiektu dyskretnego został użyty regulator PI. Można zobaczyć, że odpowiedź obiektu w stanie ustalonym dąży do wartości zadanej (w tym wypadku o wartości 1)

<p align="center">
  <img width="623" height="375" src="./readme_files/wynik_końcowy.png">
</p>
