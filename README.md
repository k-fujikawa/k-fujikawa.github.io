# Resume

## Setup

- Add enviromental variables in `.env`

```
FTP_DEPLOY_PASSWORD=XXXXXXXX
```

- Install dependencies

```
bundle install --path vendor/bundle
```

## Run server & Deploy

- Run server on localhost

```
bin/middleman serve
```

- Deploy remote server

```
bin/middleman build
bin/rake deploy:development ( / deploy:production )
```
