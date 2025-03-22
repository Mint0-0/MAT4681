############################### Chapitre 4 #####################################
# pour pouvoir utiliser ggplot coller le commentaire ci-dessous dans la console
# install.packages("ggplot2")
library("ggplot2")


# numero 2

x = c(1, 5, 8, 11)
y = c(13, 12, 9, 6)
data <- data.frame(x , y)

ggplot(data, 
       aes(x = x, y = y)) +                    # racorde quelle donnée est x et laquelle est y
       geom_point(color = "darkolivegreen", size = 3) +  # les points
       geom_smooth(method = "lm", se = FALSE, color = "deeppink") +  # la régression linéaire
       labs(title = "Droite de Régression #2", 
       x = "x",
       y = "y")

# numero 12
x = c(0, 1, 2, 3, 4, 5, 6, 7, 8 ,9, 10)
y = c(22, 18, 14, 10, 6, 2, 6, 10, 14, 18, 22)
data <- data.frame(x, y)


ggplot(data, 
       aes(x = x, y = y)) +                                     # racorde quelle donnée est x et laquelle est y
       geom_point(color = "darkseagreen", size = 3) +                 # les points
       geom_smooth(method = "lm", se = FALSE, color = "coral3") + # la régression linéaire
       labs(title = "Droite de Régression #12", 
       x = "x",
       y = "y")

# numero 18

scolarite = c(10, 10, 8, 11, 19, 19, 12, 12, 9, 17, 18, 16, 16, 14, 14, 13, 13)
nb_revues_livres = c(2, 3, 1, 5, 8, 7, 4, 3, 1, 6, 9, 6, 5, 5, 4, 5, 6)

data <- data.frame(scolarite, nb_revues_livres)


ggplot(data, 
       aes(x = scolarite, y = nb_revues_livres)) +          # racorde quelle donnée est x et laquelle est y
  geom_point(color = "orange", size = 3) +                  # les points
  geom_smooth(method = "lm", se = FALSE, color = "brown") + # la régression linéaire
  labs(title = "Droite de Régression #18", 
       x = "scolarité",
       y = "nb de livre ou de revues")


# numero 23

poids = c(50, 56, 58, 64, 64, 68, 72, 76, 78, 82, 82, 86, 93, 94, 95, 101, 104, 108)
taux_cholesterol = c(262, 250, 265, 280, 264, 256, 281, 293, 271, 261, 296, 268, 277, 300, 305, 310, 286, 301)

data <- data.frame(poids, taux_cholesterol)



ggplot(data, 
       aes(x = poids, y = taux_cholesterol)) +          # racorde quelle donnée est x et laquelle est y
       geom_point(color = "burlywood4", size = 3) +                  # les points
       geom_smooth(method = "lm", se = FALSE, color = "brown1") + # la régression linéaire
       labs(title = "Droite de Régression #23", 
       x = "poids en kg",
       y = "taux de cholesterol")













