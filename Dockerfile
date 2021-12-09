FROM postgres:13

# set authentication
ENV POSTGRES_HOST_AUTH_METHOD trust

# add example raw csv data
ADD anime-list.csv /

# add sql scripts to initialization scripts
ADD load-data.sql /docker-entrypoint-initdb.d/