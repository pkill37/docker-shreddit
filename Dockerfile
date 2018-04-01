FROM python:3.6
WORKDIR /app
RUN pip install shreddit
ADD entrypoint.sh /app
ENTRYPOINT ["./entrypoint.sh"]
