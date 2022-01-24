# jenkins-js-docker-demo-app

This demo app shows a simple user profile app set up using

index.html with pure js and css styles
nodejs backend with express mode
mongodb for data storage

All components are docker-based
## To start the application

Step 1: start mongodb and mongo-express

```
docker-compose -f docker-compose.yaml up
```
You can access the mongo-express under localhost:8080 from your browser, and verify that my-db database and users colections has been created.

Step 2:  started automatically via Jenkinsfile

You can access the application under ``` localhost:3000 ``` from your browser

## To close the application

```
docker-compose down
```

## To Install Jenkins 

Download from
```
https://www.jenkins.io/download/
```

or 
```
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```

and follow installation guide 
```
https://www.jenkins.io/doc/book/installing/linux/
```

