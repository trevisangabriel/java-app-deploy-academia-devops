cd ~/Desktop/projetos/java-app-deploy-academia-devops
docker build -t didox/app-nodejs-validacao-cnpj -f Dockerfile .
docker run -d -p 3000:3000 --name app-nodejs-validacao-cnpj didox/app-nodejs-validacao-cnpj
docker exec -it app-nodejs-validacao-cnpj npm run test
docker stop app-nodejs-validacao-cnpj
docker tag didox/app-nodejs-validacao-cnpj hub.docker.com/r/didox/app-nodejs-validacao-cnpj
docker push didox/app-nodejs-validacao-cnpj
docker rm app-nodejs-validacao-cnpj