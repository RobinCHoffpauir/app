FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN app create-db
RUN app populate-db
RUN app add-user -u admin -p admin
EXPOSE 5000
CMD ["app", "run"]
