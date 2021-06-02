# MySQL playground
A docker image with sample data and mycli to learn MySQL

## Usage

```bash
$ docker run --name mysql-playground -e MYSQL_ROOT_PASSWORD=<password> -d naoty/mysql-playground
$ docker exec -it mysql-playground mycli -p <password>
```
