############## Devoir d'informatiques pour les sciences sociales ###############

############### Importation des donnees du fichier CreditBancaire.csv ##########
df<-read.csv('CreditBancaire.csv')
df # afficher le data.frame
str(df) # explorer de data.frame

########################### Calculer la moyenne du credit ######################
mean(df$Credit)

### calculer la moyenne du nombre de jours de retard de paiement des clients ###
Mean<-by(df$Jours,df$Type,mean) # Moyenne du nombre de jours de retard par type de credits
Mean # afficher les differentes moyennnes

########################### realisation du graphique en baton ##################
# diagramme en baton du nombres de jours de retards par type de credits.
barplot(Mean, main='Diagramme en Baton',xlab='Type de credits',
        ylab='Moyenne du nombre de jours de retard',col=c('yellow'),
        col.main='purple',col.axis='purple')


