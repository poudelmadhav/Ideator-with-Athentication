# Ideator

This app is build based on similar functionality of twitter.

This is live at:
https://ideator.paudelmadhav.com.np

### How it looks?
![image](https://github.com/user-attachments/assets/7314aef9-69f4-4e17-bab0-f1bbfbf0cb24)


# Docker build

### Build image
```shell
docker build -t madhav-ideator .
```

### Set required environment variables
```shell
export SECRET_KEY_BASE="$(rails secret)"
export DATABASE_URL="postgresql://postgres:password@localhost:5432/ideator_development"
export RAILS_SERVE_STATIC_FILES=enabled
export SMTP_USERNAME=SAMPLE_USERNAME
export SMTP_PASSWORD=SAMPLE_PASSWORD
```

### Run container
```shell
docker run --rm -it -p 3000:3000 --name=ideator-container \
  -e DATABASE_URL=$DATABASE_URL \
  -e SECRET_KEY_BASE=$SECRET_KEY_BASE \
  -e RAILS_SERVE_STATIC_FILES=$RAILS_SERVE_STATIC_FILES \
  -e SMTP_USERNAME=$SMTP_USERNAME \
  -e SMTP_PASSWORD=$SMTP_PASSWORD \
  madhav-ideator
```

# Push Docker Image to Docker Hub
```shell
docker tag madhav-ideator:latest paudelmadhav/madhav-ideator:latest
docker push paudelmadhav/madhav-ideator:latest
```
