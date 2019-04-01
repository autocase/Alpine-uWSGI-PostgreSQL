FROM python:3.6-alpine3.8

# Add necessary build-packages
RUN apk update; apk add gcc g++ make libffi-dev linux-headers

RUN echo "@prev http://dl-cdn.alpinelinux.org/alpine/v3.6/main" >> /etc/apk/repositories
# Install PostgreSQL
RUN apk --no-cache add postgresql@prev=9.6.10-r0 postgresql-dev@prev=9.6.10-r0

# Install uWSGI
RUN pip install --upgrade pip && pip install --no-cache-dir uwsgi
