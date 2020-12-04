# WordPress + Docker development Environment

This is a boiler plate for starting WordPress development locally with Docker.

## Index
* [Project Setup](#project-setup)
    
    * [VirtualHosts](#virtualhosts)
    * [PHPMyAdmin](#phpmyadmin)
    * [Install WordPress](#install-wordpress)
* [Run The Project](#run-the-project)

## Project Setup

Before you get started, make sure you have installed [Docker Desktop](https://www.docker.com/products/docker-desktop) on your development machine.

### VirtualHosts

You can set up your own custom VirtualHost domain for local development by modifying the `docker_vhosts/default.conf` file in the project directory. 

All you need too do is update the `ServerName` setting in the VirtualHost block to whatever you would like. This will be the domain you will use to pull the wordpress site up in your browser.

The current default `ServerName` setting will pull up the local development site via the following domain:

```
http://wordpress.localhost
```

### PHPMyAdmin Dashboard

You can access this project's database using the defined `ServerName` mentioned in the [VirtualHosts](#virtualhosts) section of this doc.

For example, the default path un-modified would be:

```
http://wordpress.localhost:8080
```

**NOTE:** All you do is add port `8080` at the end of your definee `ServerName`!

### Install WordPress

You can install the latest version of WordPress by downloading the latest version via [wordpress.org](https://wordpress.org/download/) and placeing the WordPress core files inside of the `public` directory.

## Run the Project

After you have finished your [Project Setup](#project-setup)... all you should have to do is run the following terminal script via the root project directory:

```
docker-compose up
```

**NOTE:** Once complete, you will be able to pull up the WordPress site or PHPMyAdmin via the endpoints discussed above!

Once you are done developing, you can bring down this project's development environment by doing the following:

1) Hit ctrl-d in the terminal console running `docker-compose` scripts.

2) Bring down the containers by running:

    ```
    docker-compose down
    ```

3) You can verify which containers are running with the following terminal script:

    ```
    docker container list
    ```

**Note:** You will not be able to run multiple projects if they share the same exposed ports!!!