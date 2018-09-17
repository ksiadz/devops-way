FROM python:3
COPY . /
RUN 	apt-get update && \
	apt-get install make -y
WORKDIR /app
EXPOSE 5000
CMD make run-app
