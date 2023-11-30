#! /bin/sh
# Build docker images
docker build -t item-app:v1 .

# List of images
docker images

# Change image name, adjust to github package
docker tag item-app:v1 docker.pkg.github.com/akhmaliswara/a433-microservices/item-app:v1

# Login to github package
echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u akhmaliswara --password-stdin

# Push image to github package
docker push docker.pkg.github.com/akhmaliswara/a433-microservices/item-app:v1