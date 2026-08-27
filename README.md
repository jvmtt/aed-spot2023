# aed-spot2023

Análise Exploratória de Dados | Spotify 2023

Projeto de análise exploratória de dados feito em R para a disciplina de AED.

O trabalho utiliza uma base com as músicas mais reproduzidas no Spotify em 2023 e busca analisar a relação entre modo musical, valência e número de streams.

Sobre a análise

A base possui 952 músicas e 24 variáveis. Primeiro, foi feita uma análise inicial dos dados e uma verificação de valores ausentes. Depois, foram analisadas as variáveis mode, valence e streams.

As principais análises foram:

* Distribuição das músicas entre os modos Major e Minor;
* Mediana de streams por modo musical;
* Mediana de valência por modo musical;
* Boxplots para comparar as distribuições;
* Relação entre valência e streams.

Como streams possui muitos valores extremos, a mediana foi utilizada nas comparações.

Resultados

As músicas em modo Major apresentaram uma mediana de streams um pouco maior que as músicas em modo Minor.

Já em relação à valência, as músicas Minor apresentaram uma mediana maior.

Na análise entre valência e streams, não foi encontrada uma tendência clara, indicando que a valência, sozinha, não parece estar diretamente relacionada ao número de reproduções.

Ferramentas

* R
* tidyverse
* ggplot2
* visdat
* GGally

Arquivos

projeto_spotify.R — código utilizado na análise

relatorio.pdf — relatório completo do projeto

Fonte dos dados

Base de músicas mais reproduzidas do Spotify em 2023, disponibilizada no Kaggle/GitHub.
<github.com/HugoCarvalhoUFRJ/aed/blob/main/materiais-didaticos/spotify-2023-mod.csv>.

⸻

Projeto acadêmico — UFRJ | Estatística