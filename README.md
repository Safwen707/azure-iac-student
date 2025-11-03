# azure-iac-student

Petit projet pédagogique pour apprendre l'Infrastructure as Code (IaC) avec Terraform et déployer une webapp de démonstration sur Azure.

## Sujet

Le but : expérimenter le flux complet « écrire de l'infra en code → provisionner sur Azure → déployer une webapp simple » afin de comprendre les concepts de base de Terraform et les interactions avec une application Node.js.

Le dossier `webapp/` contient la webapp de démonstration (fichiers principaux : `server.js`, `package.json`, `index.html`).

## Structure du dépôt

- `main.tf`, `providers.tf`, `variables.tf`, `outputs.tf` : fichiers Terraform pour provisionner les ressources Azure.
- `terraform.tfstate*` : fichiers d'état (présents ici pour l'exemple). En vrai projet, évitez de versionner les fichiers d'état.
- `webapp/` : code de la webapp Node.js de démonstration.

## Prérequis

- Terraform (version 1.x recommandée)
- Azure CLI (pour s'authentifier si vous déployez)
- Node.js + npm (pour exécuter la webapp localement)

## Utilisation rapide

1) Se connecter à Azure (si vous déployez sur votre subscription) :

```bash
az login
az account set --subscription "<VOTRE_SUBSCRIPTION>"
```

2) Initialiser et appliquer Terraform :

```bash
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

3) Lancer la webapp localement (pour tester l'app sans Azure) :

```bash
cd webapp
npm install
npm start
```

Remarque : ce dépôt est un projet d'apprentissage — les valeurs et les fichiers d'état peuvent être présents à des fins pédagogiques. Ne pas utiliser tel quel en production.

## Outcome personnel

Ce projet m'a permis d'acquérir des bases concrètes en IaC :
- Comprendre la structure d'un repo Terraform et le rôle du state.
- Apprendre à provisionner des ressources Azure de façon répétable.
- Gagner en confiance pour démarrer des déploiements cloud simples et continuer vers des pratiques plus avancées (modules, CI/CD).

## Prochaines étapes possibles

- Extraire des modules Terraform pour améliorer la réutilisabilité.
- Ajouter un pipeline CI/CD pour automatiser `terraform plan/apply` et le déploiement de la webapp.
- Ajouter des tests d'infrastructure (ex : checks d'existence de ressources).

## Contact

Si vous voulez voir le code, obtenir un retour ou partager des conseils, laissez un commentaire ou envoyez‑moi un message.
