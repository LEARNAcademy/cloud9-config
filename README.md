# cloud9-config

## setup.sh

This is a script to run on a new Cloud-9 Ubuntu instance that will setup a Ruby on Rails environment for development.

### Quickstart

1) Choose 'Ubuntu' environment when setting up a new Cloud 9 Instance
2) From the command line, run:
  ```\curl -sSL https://raw.githubusercontent.com/LEARNAcademy/cloud9-config/master/setup.sh | sudo bash -s```

### Details

#### Create a new environment
![create environment](./assets/1-create-environment.png)

Or, if you have created another environment alredy, you can start here:

![create environment](./assets/1-b-create-environment.png)

#### Choose a Name
Name your environment something descriptive.  You'll likely end up with many environments, so name it something that will help you remember exactly what work is on this environment.

![Name](./assets/2-name.png)

#### Choose Ubuntu
Ubuntu is a flavor of Linux that is great for developing and deploying all kinds of web applications.  Javascript, Node, and Rails especially!

![Choose Ubuntu](./assets/3-choose-ubuntu.png)

#### Review

![Review](./assets/4-create-environment.png)

#### Connecting
It may take a minute or two for Cloud9 to setup your new development server.  This is a great time to refresh your coffee.

![Connecting](./assets/5-connecting.png)

#### Run Setup
Copy and past the following command into the terminal window.  This will download a script from Learn's Github account and configure your sever with the things you need to start developing:

```Bash
 \curl -sSL https://raw.githubusercontent.com/LEARNAcademy/cloud9-config/master/setup.sh | sudo bash -s
 ```

 ![Setup](./assets/6-run-script.png)

 #### Create a Rails App
 You're ready to create your application

 ![Create Rails App](./assets/7-hello-world.png)


 #### Set Ubuntu Postgres User
 The setup script created a user in Postgresql named 'ubuntu'.  We need to configure Rails to use this user when connecting to the database.

 ![Ubuntu Postgres User](./assets/8-ubuntu-user.png)

 ### Create the Database
 You can now create the database for your project.

 ![Create Database](./assets/9-db-setup.png)
