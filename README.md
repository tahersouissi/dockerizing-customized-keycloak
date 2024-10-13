# dockerizing-customized-keycloak

In this project we will be customizing  keycloak SSO login/register for better UX/UI design following the keycloak logic and syntax (ftl extension )
## Getting Started

We will use the power of docker to make the developping process easy 
- We will mount the directory of the themes in the docker container of the keycloak
- We can change login or register etc .. and see it is output with less pain

To start customizing the authentication design we need this structure :

![alter Text](https://github.com/user-attachments/assets/0131b53f-73e2-4a5b-a7eb-795ed9d03979?raw=true)

Bla bla bla ... 
Let's see some coding we are in hurry !!  🏃 🏃

### Prerequisites

install docker , docker-compose  , git
little knowledge of tailwind-css


### Running the project 

A step by step guide to run the project

Cloning the repo
```
git clone https://github.com/tahersouissi/dockerizing-customized-keycloak.git
```

Go directly to the project folder
```
cd  dockerizing-customized-keycloak
```

Now run the project without the "-d" option to see the logs
```
docker-compose up 
```

* Hat tip to anyone whose code was used
* Inspiration
* etc
