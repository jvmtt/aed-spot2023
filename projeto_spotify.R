install.packages("tidyverse")
install.packages("visdat")
install.packages("GGally")

library("tidyverse")
library("visdat")
library("GGally")

dados <-
  read.csv(
    "https://github.com/HugoCarvalhoUFRJ/aed/raw/refs/heads/main/materiais-didaticos/spotify-2023-mod.csv",
    header = TRUE,
    sep = ',',
    dec = '.'
  )

head(dados)
names(dados)

# Aqui, utilizou-se o head para visualizarmos as variaveis e suas respectivas estruturas.

summary(dados)

# Aqui foi feito um resumo dos dados contidos

vis_dat(dados)

# Usa-se o vis_dat para verificar se há valores faltantes.

colSums(is.na(dados))
dim(dados)

table(dados$mode)

# A variável "mode" representa o modo musical (Maior e menor).

summary(dados$streams)

# Resumo dos dados

dados %>%
  group_by(mode) %>%
  summarise(
    mediana_streams = median(streams, na.rm = TRUE)
  )

# Aqui, foi observada a mediana de streams por modo musical.
# Observou-se que as musicas em modo maior tiveram a mediana superior às de modo menor.

dados %>%
  group_by(mode) %>%
  summarise(
    mediana_valencia = median(valence_., na.rm = TRUE)
  )

# Com isso, observou-se que as musicas em modo menor apresentaram valência superior.

ggplot(dados, aes(x = mode, y = log10(streams))) +
  geom_boxplot() +
  labs(
    title = "Distribuição dos Streams por Modo Musical",
    x = "Modo Musical",
    y = "Streams (Log 10)"
  )

# Major apresentou mediana ligeiramente maior

ggplot(dados, aes(x = mode, y = valence_.)) +
  geom_boxplot() +
  labs(
    title = "Distribuição da Valência por Modo Musical",
    x = "Modo Musical",
    y = "Valência"
  )

# Minor possui maior mediana

ggplot(dados, aes(x = valence_., y = log10(streams))) +
  geom_point(alpha = 0.3) +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  coord_cartesian(ylim = c(7.5, 10)) +
  labs(
    title = "Relação entre Valência e Streams",
    x = "Valência",
    y = "Streams (Log 10)"
  ) +
  theme_bw()

# Sem tend. clara