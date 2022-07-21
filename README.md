# Explanation
#### This will pull from a private Jfrog Artifactory PyPi repository made here https://github.com/awakzdev/CICD-PyPi-Artifact
#### Will calculate all prime numbers that come before a number (2, 100) and return as a JSON within flask

<HR>
  
##### Pull image 
`docker pull awakzdev.jfrog.io/docker-local/simple-flask:latest`

##### Run Image
`docker run -p 8777:8777 -it awakzdev.jfrog.io/docker-local/simple-flask`
