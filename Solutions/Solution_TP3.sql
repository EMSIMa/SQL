-- Question 1:

numeric(4,1)

--numeric(4,1) fournit quatre chiffres au total (la précision) et un chiffre après la décimale (l'échelle). 
--Cela vous permet de stocker une valeur aussi grande que 999,9.

--En pratique, vous pouvez considérer que l'hypothèse sur le nombre maximum de kilomètres parcourus en une journée 
--pourrait dépasser 999,9 et opter pour la valeur plus élevée numeric(5,1).

-- Question 2:

varchar(50)
-- ou
text
-- 50 caractères est une longueur raisonnable pour les noms, et l'utilisation de varchar(50) 
-- ou de text permet de ne pas gaspiller d'espace lorsque les noms sont plus courts. 
-- L'utilisation de text garantit que si vous rencontrez le cas exceptionnellement rare 
-- d'un nom de plus de 50 caractères, vous serez couvert. En outre, le fait de séparer les noms 
-- et les prénoms dans leurs propres colonnes vous permettra de les trier ultérieurement de manière indépendante.


-- Question 3: 
-- Toute tentative de conversion d'une chaîne de texte non conforme aux formats de date et d'heure acceptés entraînera une erreur. 
-- Vous pouvez le constater dans l'exemple ci-dessous, qui tente de convertir la chaîne en horodatage.

SELECT CAST('4//2021' AS timestamp with time zone);