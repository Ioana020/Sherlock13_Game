# Sherlock 13 – Projet OS USER

## Présentation

Ce projet est une implémentation réseau du jeu **Sherlock 13**, réalisée dans le cadre du module **OS USER**.  
Il permet à **quatre joueurs** de participer à une partie via une interface graphique interactive (avec SDL2), en communiquant avec un serveur central par **sockets TCP**.

Le jeu met en œuvre plusieurs concepts systèmes vus en TP : **threads**, **mutex**, **communication réseau**, et **architecture client-serveur**.

## Organisation des fichiers

Tous les fichiers nécessaires se trouvent dans le dossier `source/`, à l’exception du rapport :

- `server.c` – code source du serveur  
- `sh13.c` – code source du client avec SDL2  
- `cmd.sh` – script de compilation automatique  
- `*.png` – toutes les images utilisées par l’interface graphique  
- `sans.ttf` – police utilisée pour l’affichage du texte  

Le fichier `rapport.pdf`, qui explique le fonctionnement du projet et les choix techniques, se trouve à la racine du dépôt.

## Dépendances

Avant de compiler, assurez-vous d’avoir installé les bibliothèques suivantes :

- `SDL2`
- `SDL2_image`
- `SDL2_ttf`
- `pthread` (déjà inclus sur la plupart des systèmes Linux/macOS)


## Compilation

Donnez les droits d'exécution au script puis lancez-le :

```bash
chmod +x cmd.sh
./cmd.sh
```

Ce script compile automatiquement :

- **le serveur** : `./server`  
- **le client** : `./sh13` (avec toutes les dépendances SDL2)

> **Remarque** : Assurez-vous d’avoir toutes les bibliothèques nécessaires installées avant la compilation (voir section **Dépendances**).

---

## Lancement du jeu

### Étape 1 – Lancer le serveur

Dans un terminal :

```bash
./server 32000
```

### Étape 2 – Lancer les clients (4 joueurs requis)

Dans **quatre terminaux séparés**, exécutez une instance client pour chaque joueur :

```bash
./sh13 localhost 32000 localhost 32001 J1
./sh13 localhost 32000 localhost 32002 J2
./sh13 localhost 32000 localhost 32003 J3
./sh13 localhost 32000 localhost 32004 J4
```

> **Important** : La partie commence automatiquement lorsque **les 4 joueurs** sont connectés.

---

## Compatibilité


- **Linux** 
- **macOS** 
- **Windows** 








