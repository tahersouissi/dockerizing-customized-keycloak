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

### Setting up keycloak with mailhog 
create a template email 
![Screenshot from 2024-10-13 00-19-56](https://github.com/user-attachments/assets/1ee5e141-a348-4111-8cd8-e3fc0da089ae)
Sync keycloak with mailhog
![Screenshot from 2024-10-13 00-20-05](https://github.com/user-attachments/assets/7e00e587-299c-44c8-9b43-68e3c9645446)
define the admin email
![Screenshot from 2024-10-13 00-21-16](https://github.com/user-attachments/assets/e5b14ff2-972b-43dd-92d1-1b2fb8a939ac)


Boom everythin works well
![Screenshot from 2024-10-13 00-22-42](https://github.com/user-attachments/assets/2742df87-052c-4d47-bfa3-863ea2793b02)

### Test customized template
Choose the Realm you want to edit ---> Realm Setting --> Themes 
![Screenshot from 2024-10-13 00-25-30](https://github.com/user-attachments/assets/2394faaf-f499-47d7-8251-3126c35cf4c0)

This is the Login


![Screenshot from 2024-10-13 00-26-07](https://github.com/user-attachments/assets/35750c62-fd5c-4813-9b05-376450e446ba)

This is the register
![Screenshot from 2024-10-13 00-26-29](https://github.com/user-attachments/assets/0053aaf7-f866-4a1f-849f-d7e4d6363891)








