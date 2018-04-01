# docker-shreddit

Automate and containerize Shreddit so I don't have to reread the instructions whenever I run it every once in a while.

## Run

```
docker run -it faviouz/shreddit
```

## Build

```
docker build -t shreddit .
docker tag shreddit faviouz/shreddit:latest
docker push faviouz/shreddit:latest
```
