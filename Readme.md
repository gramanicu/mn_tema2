# Tema MN #2 - __SVD__, __PCA__ & __Eigenfaces__
 
In aceasta tema am implementat algoritmi de DVS (SVD in engleza), ACP (PCA in engleza) si unul bazat pe matricea covarianta, pentru a comprima o imagine. A doua parte a temei a fost reprezentata de implementarea unui algoritm de recunoastere faciala, "Eigenface".

## Partea I

Toti algoritmi sunt descrisi in cerinta, iar implementarea lor a fost relativ simpla, deoarece este descris algoritmul pas cu pas.

Pentru SVD si PCA, am realizat grafice ce reprezinta:
- valorile singulare ale imaginii/ vectorul diag(S)
- informatia data de primele k valori singulare
- eroarea aproximarii
- rata de compresie a datelor

### SVD

Imaginea 2

![Eigenvalues22](./Graphs/task2a_2.jpg "Eigenvalues")
![Information22](./Graphs/task2b_2.jpg "Information")
![Error22](./Graphs/task2c_2.jpg "Error")
![Compression22](./Graphs/task2d_2.jpg "Compression")

Imaginea 3

![Eigenvalues23](./Graphs/task2a_3.jpg "Eigenvalues")
![Information23](./Graphs/task2b_3.jpg "Information")
![Error23](./Graphs/task2c_3.jpg "Error")
![Compression23](./Graphs/task2d_3.jpg "Compression")

### PCA

Imaginea 2

![Eigenvalues52](./Graphs/task5a_2.jpg "Eigenvalues")
![Information52](./Graphs/task5b_2.jpg "Information")
![Error52](./Graphs/task5c_2.jpg "Error")
![Compression52](./Graphs/task5d_2.jpg "Compression")

Imaginea 3

![Eigenvalues53](./Graphs/task5a_3.jpg "Eigenvalues")
![Information53](./Graphs/task5b_3.jpg "Information")
![Error53](./Graphs/task5c_3.jpg "Error")
![Compression53](./Graphs/task5d_3.jpg "Compression")

In cazul PCA, rata de compresie a datelor este mai mare

## Partea a II-a - Eigenfaces

Aceasta metoda de recunoastere faciala este bazata pe determinarea valorilor si vectorilor proprii.

Implementarea algoritmului este impartita in doua fisiere: eigenface_core.m si face_recognition.m. Prima parte se ocupa de "antrenament", avand la baza un dataset, iar a doua calculeaza "distanta"(diferenta) pana la cea mai asemanatoare imagine si indexul acesteia.

Acest task mi-a ridicat cele mai multe probleme. Am incercat foarte multe implementari, bazate pe algoritmul din pdf, bazate pe prezentarea powerpoint a algoritmului sau de pe internet, dar nu am reusit sa obtin rezulatul corect. Implementarea curenta a taskului 6 este cea bazata pe algoritmul descris in enunt.


© 2019 Grama Nicolae, 312CA