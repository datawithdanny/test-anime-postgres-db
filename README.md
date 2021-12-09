# Minimal Docker Postgres Setup

Run the following to build the container:

```bash
docker build -t anime-db .
```

Once this is finished running, you can run `docker images

```bash
docker run -d -p 5555:5432 --rm -e POSTGRES_USER=danny -e POSTGRES_PASSWORD=supersecret anime-db
```

Now you should be able to access the database via any tool through port 5555 mapped to your local machine.

```bash
psql -U danny -h localhost -p 5555

> select * from anime_list limt 5;
```
