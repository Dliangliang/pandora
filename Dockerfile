ARG EnvironmentVariable
FROM python:3.7-slim
WORKDIR /opt/app
ADD . .
RUN pip install --upgrade pip && pip install .[api,cloud]
EXPOSE 8018
ENTRYPOINT ["bin/startup.sh"]
