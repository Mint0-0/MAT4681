############################# CHAPITRE 1 #######################################

# numero 3

revenus <- c(4.9,2.4,9.8,3.8,7.7,6.0,3.3,3.6,4.7,6.9,5.2,2.6,2.9,4.8,9.0,4.3,
             1.6,2.6,0.8,4.1, 4.8,4.4,4.5,3.6,8.2,2.4,3.3,10.3,4.4,5.3,11.6,
             7.7,4.6,5.6,3.7,5.2,6.4,2.4,0.6,4.6,6.9,0.1,3.5,1.0,3.1,8.2,2.9,
             6.7,4.5,4.4,5.3,5.7,2.3,4.6,1.4,1.8,5.9,6.5,5.1,6.8,7.8,7.6,7.7,
             10.8,4.8,2.4,2.0,3.2,4.1,4.5,3.5,3.9,7.9,2.0,5.5,4.8,5.9,1.3,3.9,
             7.9,0.8,7.4,9.9,3.4,4.4,3.2,11.1,3.6,5.6,2.0,8.2,4.9,4.3,3.3,3.0,
             5.0,0.3,7.7,4.9,6.2,3.2,4.7,7.9,5.5,8.8,5.7,2.3,3.5,1.5,10.9,4.1,
             4.2,4.7,0.7,3.5,2.8,4.4,5.9,6.0,6.8,8.1,4.1,8.0,2.8,9.4,5.2,5.4,
             5.4,0.6,3.9,8.4,2.0,6.7,3.8,1.8,8.3,2.8,2.8,10.3,0.6,3.4,3.7,3.8,
             4.3,6.5,1.6,8.3,10.4,5.6,4.6)

# histogramme
hist_data <- hist(revenus,
                # breaks = 12,
                  main = "Histogramme du salaire", 
                  xlab = "Pourcentage de ventes",
                  ylab = "Effectif",
                  col = "pink",
                  right = FALSE    # interval ouvert à droite
)

# ajoute un axe sur le coté droit
axis(side = 4,
     at = pretty(hist_data$counts),
     labels = round(pretty(hist_data$counts) / length(revenus), 2))


# polygone de fréquence
midpoints <- hist_data$mids
frequences <- hist_data$counts

plot(midpoints,
     frequences, 
     type = "o",
     xlab = "Revenus", 
     ylab = "Fréquence", 
     main = "Polygone de fréquences", 
     # esthétique
     lwd = 2, 
     col = "black", 
     pch = 16
)

axis(side = 4,
     at = pretty(hist_data$counts),
     labels = round(pretty(hist_data$counts) / length(revenus), 2))


# données de la distribution 
print(hist_data$density)
print(hist_data$counts)
print(sum(hist_data$counts))

################################################################################
# numero 4

dataGain<-c(390,385,418,368,341,427,471,401,519,467,
            561,427,433,451,411,407,387,451,419,387,
            467,402,388,379,506,602,376,465,459,502,
            531,571,393,412,437,617,512,407,519,392,
            491,552,439,475,462,501,392,419,571,437,
            718,513,491,567,431,438,368,337,415,352,
            438,467,550,318,439,398,519,539,315,475)

# R ne permet pas de juste mettre break = 14 dans hist :D
# sequence sert à faire nos intervalles personalisées
sequence_intervalles <- seq(310, max(dataGain) + 30, by = 30)
hist_data <- hist(dataGain,
                  breaks = sequence_intervalles,
                  main = "Histogramme du salaire", 
                  xlab = "Tranche", 
                  ylab = "Effectif",
                  col = "pink"
)

# midpoint $mids met les points à chaque milieu de barre d'un graphique histogramme
# counts nous permet d'avoir les fréquences pour chaque point du polygone de fréquence
midpoints <- hist_data$mids
frequences <- hist_data$counts


# polygone de fréquence
# type = "o" veut dire overlaid, ça fait un graphique de lignes et de points
plot(midpoints, 
     frequences,
     type = "o", 
     pch = 16, 
     main = "polygone de fréquence du salaire", 
     xlab = "Tranche", ylab = "Fréquence", 
     xlim = c(min(midpoints) - 30, max(midpoints) + 30)
)
################################################################################
# numero 5

donnee_semaine<-c(50,42,47,42,44,40,35)
jour_semaine <- c("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi", "Samedi", "Dimanche")

# diagramme à barres
barplot(donnee_semaine,
        names.arg = jour_semaine,
        col = "pink", 
        main = "Distribution de 300 accouchements", 
        xlab = "Jour",
        ylab = "Nombre d'accouchements"
)

################################################################################
# numero 7

frequences <- c(2/9, 7/36, 1/4, 1/12, 5/36, 1/9)
resultat_des <- c("1", "2", "3", "4", "5", "6")

barplot(frequences, 
        names.arg = resultat_des,
        col = "pink", 
        main = "Diagramme à bâtons des résultats d'un dé", 
        xlab = "Résultat",
        ylab = "Fréquence"
)

################################################################################
# numero 12

# milieu des barres pour le polygone de fréquence
centre_interv <- c(500, 3000, 7500, 12500, 17500, 22500, 27500, 32500, 42500)
# taille des intervalles
intervalle <- c(0, 1000, 5000, 10000, 15000, 20000, 25000, 30000, 35000, 50000)

frequence_homme <- c(0.028, 0.085, 0.315, 0.121, 0.119, 0.111, 0.092, 0.082, 0.047)
frequence_femme <- c(0.055, 0.235, 0.472, 0.136, 0.059, 0.025, 0.008, 0.006, 0.004)

# rep() répète les valeurs pour quMelles match avec la fréquemce et times() 
# gere le nb de fois que la variable se repètera
data_homme <- rep(centre_interv, times = round(frequence_homme * 1000))
data_femme <- rep(centre_interv, times = round(frequence_femme * 1000))

# hist homme
hist(data_homme,
     breaks = intervalle,
     freq = TRUE,
     main = "Histogramme des revenus - Hommes",
     xlab = "Revenus", 
     ylab = "Fréquence"
)

# hist femmee
hist(data_femme,
     breaks = intervalle,
     freq = TRUE,
     main = "Histogramme des revenus - Femmes",
     xlab = "Revenus", 
     ylab = "Fréquence"
)


# Polygone de fréquebce des hommes
plot(centre_interv,
     frequence_homme, 
     type = "o",
     col = "blue",
     pch = 16,
     xlab = "Revenus ", 
     ylab = "Fréquence",
     main = "Polygone des fréquences des revenus",
     ylim = c(0, 0.5),          # Ajuster les limites de l'axe Y
)

# ajoute sur plot la ligne pour les femmes 
# ATTENTION utiliser plot 2 fois va juste créer deux graphiqeus différents
lines(centre_interv, frequence_femme, type = "o", col = "orange", pch = 16, lty = 2)

legend("topright", 
       legend = c("Hommes", "Femmes"),
       col = c("blue", "orange"),
       lty = c(1, 2), 
       pch = 16
)
################################################################################
# numero 14

# données
ages <- c("15-19", "20-24", "25-29", "30-34", "35-39", "40-44", "45-49", "50-54", "55-59", "60-64")
celibataires <- c(44827, 81345, 21774, 5216, 1768, 833, 521, 383, 265, 176)
veuves <- c(20, 175, 391, 394, 425, 529, 795, 932, 1041, 947)
divorcees <- c(86, 2558, 6162, 4785, 2958, 2121, 1589, 1125, 563, 235)

# total de chaque groupeS
total_celibataires <- sum(celibataires)
total_veuves <- sum(veuves)
total_divorcees <- sum(divorcees)

# frequence de chque groupe. sans cela le graphique ne serait pas réellement 
# représentatif puisque chaque groupe est de taille differente
frequence_celibataires <- celibataires / total_celibataires
frequence_veuves <- veuves / total_veuves
frequence_divorcees <- divorcees / total_divorcees

# polygone de fréquence pour les célibataires
plot(1:length(ages),
     frequence_celibataires, 
     type = "o",
     col = "blue",
     xaxt = "n",      # retire l'axe x fait automatiquement
     xlab = "Âge", 
     ylab = "Fréquence", 
     main = "Polygones de fréquences", 
     ylim = c(0, max(frequence_celibataires, frequence_veuves, frequence_divorcees))
)
# ajout des lignes de veuves et des divorcées
lines(1:length(ages), frequence_veuves, type = "o", col = "red")
lines(1:length(ages), frequence_divorcees, type = "o", col = "green")

# axe avec l'age aux x
axis(side = 1, at = 1:length(ages), labels = ages)

legend("topright", 
       legend = c("Célibataires", "Veuves", "Divorcées"),
       col = c("blue", "red", "green"), 
       lty = 1, 
       pch = 1)
