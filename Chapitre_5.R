############################### Chapitre 5 #####################################

# numero 13
fct_masse <- c(1/16, 1/4, 3/8, 1/4, 1/16)
nb_faces <- c("0", "1", "2", "3", "4")

barplot(fct_masse, 
        names.arg = nb_faces,
        col = "pink", 
        main = "Diagramme à bâtons des résultats d'un dé", 
        xlab = "Résultat",
        ylab = "Fréquence"
)
