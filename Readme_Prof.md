# Setup

## Dépendance 

- [Docker](https://www.docker.com/)

## Start-up

Depuis le terminal de votre IDE (comme WebStorm) vous pouvez taper la commande suivante :

`docker-compose up -d --build`

En fonction de votre OS vous pouvez avoir besoin d'être sudo

## Check

Pour vérifier que tout est okay : 

`docker ps`

Vous devriez voir ceci :

```bash
CONTAINER ID   IMAGE                   COMMAND                  CREATED        STATUS        PORTS                            NAMES
0f671f1fbf18   swaggerapi/swagger-ui   "/docker-entrypoint.…"   39 hours ago   Up 39 hours   80/tcp, 0.0.0.0:8080->8080/tcp   recruit-game_swagger_1
51196d8ea4b6   postgrest/postgrest     "/bin/postgrest"         39 hours ago   Up 39 hours   0.0.0.0:3000->3000/tcp           recruit_api
1a5abef386e1   adminer:latest          "entrypoint.sh docke…"   39 hours ago   Up 39 hours   0.0.0.0:8082->8080/tcp           adminer
907640ecdf41   postgres:11.8           "docker-entrypoint.s…"   39 hours ago   Up 39 hours   0.0.0.0:5432->5432/tcp           recruit_postgres
```

## Pour bien commencer 

Je vous recommande d'utiliser la base du projet [Agil'IUT](https://gitlab.univ-artois.fr/benjamin.lecha/burgerquizzetu)

## Pour accéder à votre base de données depuis l'application / API :

Depuis l'application vous devrez utiliser l'API accesible en 0.0.0.0:3000

Pour essayer l'API vous pouvez utiliser un outil comme PostMan mais sinon je vous ai mis un swagger accessible à l'adresse 0.0.0.0:8080

**TODO**
USER: app_user
PASSWORD: password
DB: database
**TODO**

## Pour accéder à votre base de données depuis le web :

Depuis le web vous avez un Adminer (equivalant PhpMyAdmin) à l'adresse 0.0.0.0:8082 pour les identifiants de connexions :

**TODO**

## **TODO**

## Pour toutes questions 

@ : benjamin.lecha@iemn.fr
