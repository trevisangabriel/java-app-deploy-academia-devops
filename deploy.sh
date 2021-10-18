cd ~/Desktop/projetos/java-app-deploy-academia-devops
docker build -t trevisangabriel/java-app-deploy-academia-devops -f Dockerfile .
docker run -d -p 3000:3000 --name java-app-deploy-academia-devops trevisangabriel/java-app-deploy-academia-devops
docker exec -it java-app-deploy-academia-devops npm run test
docker stop java-app-deploy-academia-devops
docker tag trevisangabriel/java-app-deploy-academia-devops hub.docker.com/r/trevisangabriel/java-app-deploy-academia-devops
docker push trevisangabriel/java-app-deploy-academia-devops
docker rm java-app-deploy-academia-devops
