FROM python:3.6.5-alpine3.7
WORKDIR /app
RUN pip install shreddit==6.0.7 
ADD entrypoint.sh /app
ENTRYPOINT ["./entrypoint.sh"]
