hello-world-db-apb
======================

A minimal example APB for deploying a simple Postgres database that an be bound to the example hello-world app deployed by [hello-world-apb](https://github.com/ansibleplaybookbundle/hello-world-apb)

At provision, admin credentials are encoded for use at bind time.

At bind time, using asynchronous binding, this version creates a new database, user, and password for each binding.  These are encoded and passed back to the service catalog for use to create the credentials.

## What it does
Deploys a bindable database service for the hello world web application.

## Parameters
* postgresql_admin_password

## Bind Parameters
* postgresql_db_name
* postgresql_user
* postgresql_password
