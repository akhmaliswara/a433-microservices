#! /bin/sh
# Build docker images
docker build -t akhmaliswara/karsajobs-ui:latest .

# Change image name, adjust to github package
docker tag akhmaliswara/karsajobs-ui:latest docker.pkg.github.com/akhmaliswara/a433-microservices/karsajobs-ui:latest

# Login to github package
echo $GITHUB_TOKEN | docker login docker.pkg.github.com -u akhmaliswara --password-stdin

# Push image to github package
docker push docker.pkg.github.com/akhmaliswara/a433-microservices/karsajobs-ui:latest