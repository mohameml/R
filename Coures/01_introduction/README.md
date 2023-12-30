# cour 01 : 


## installer R sur Ubuntu :

Pour installer R sur Ubuntu, vous pouvez suivre ces étapes simples en utilisant le terminal. Assurez-vous d'avoir les privilèges d'administrateur pour effectuer ces opérations.

1. **Mettre à jour votre liste de paquets :**
   ```bash
   sudo apt-get update
   ```

2. **Installer R :**
   ```bash
   sudo apt-get install r-base
   ```

   Cela installera le logiciel de base R. Si vous avez besoin d'environnements de développement et de bibliothèques supplémentaires, vous pouvez également installer `r-base-dev` :
   ```bash
   sudo apt-get install r-base-dev
   ```

3. **Vérifier l'installation (optionnel) :**
   Vous pouvez vérifier si R a été installé correctement en ouvrant le terminal et en tapant `R`. Cela devrait vous amener à l'invite R.

4. **Installer RStudio (optionnel) :**
   RStudio est un environnement de développement intégré (IDE) populaire pour R. Vous pouvez l'installer en téléchargeant le paquet correspondant depuis le site officiel de RStudio (https://www.rstudio.com/products/rstudio/download/) ou en utilisant les commandes suivantes dans le terminal :
   ```bash
   sudo apt-get install gdebi-core
   wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.4.1106-amd64.deb
   sudo gdebi rstudio-1.4.1106-amd64.deb
   ```

   Assurez-vous de remplacer le lien de téléchargement par la version la plus récente disponible sur le site de RStudio.

Ces étapes devraient vous permettre d'installer R sur votre système Ubuntu.

## installer une bibliothèque R : 

Pour installer une bibliothèque R sur Unix en utilisant `sudo R`, suivez ces étapes :

1. Ouvrez un terminal.

2. Tapez la commande suivante pour démarrer R avec des privilèges élevés en utilisant `sudo` :
   ```bash
   sudo R
   ```

   Cela vous demandera de saisir votre mot de passe administrateur.

3. À l'intérieur de la console R, vous pouvez ensuite installer une bibliothèque en utilisant la fonction `install.packages`. Par exemple, pour installer la bibliothèque "jsonlite" :
   ```R
   install.packages("jsonlite")
   ```

   Si vous souhaitez installer une version spécifique, vous pouvez la spécifier en utilisant le paramètre `version` :
   ```R
   install.packages("jsonlite", version="1.7.3")
   ```

4. Une fois l'installation terminée, vous pouvez quitter la console R :
   ```R
   q()
   ```

Remarque : Bien que l'utilisation de `sudo R` soit une manière d'installer des bibliothèques R au niveau du système, il est généralement recommandé d'installer les bibliothèques localement ou dans des bibliothèques spécifiques à l'utilisateur pour éviter des problèmes potentiels de permissions et pour avoir un meilleur contrôle sur les versions des bibliothèques. Considérez l'utilisation de chemins de bibliothèques locaux (Option 2 ou Option 3 de la réponse précédente) pour des installations spécifiques à l'utilisateur. Si vous rencontrez des problèmes de permissions, vous devrez peut-être ajuster les permissions des répertoires de bibliothèques R ou envisager des approches alternatives en fonction de la configuration de votre système.