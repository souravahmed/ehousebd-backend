# Getting started with ehousebd project

This is django-rest api with postgresql database.

## Installation

Requirments.txt file has all the dependency. create a database in pgAdmin and it should be ehousebd or you can change the database name, password, username, host, port in setting.py file.
To install all the dependency run below command after activating your virtualenv also need to run migrations. follow below command

```sh
pip install -r /path/to/requirements.txt
python manage.py makemigrations
python manage.py migrate
```

run backup.sql file in pgAdmin. to login admin panel follow below instructions

```sh
url -> http://localhost:8000/admin
email address -> sourav@gmail.com
password -> sourav101
```

## Features

- JWT authentication
- custom user model with user addresses
- categories CRUD
- product variation
- product image gallery
