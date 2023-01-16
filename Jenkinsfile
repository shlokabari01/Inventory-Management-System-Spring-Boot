

def containerName="springboot"
def tag="latest"
def dockerHubUser="shlokabari06"
def httpPort="8090"

node {

    stage('Checkout') {
        git changelog: false, poll: false, url: 'https://github.com/shlokabari01/Inventory-Management-System-Spring-Boot.git'
    }

    stage('Build'){
        sh "mvn clean install"
    }

    stage("Image Prune"){
         sh "docker image prune -a -f"
    }

    stage('Image Build'){
        sh "docker build -t $containerName:$tag  -t $containerName --pull --no-cache ."
        echo "Image build complete"
    }

    stage('Push to Docker Registry'){
        withCredentials([usernamePassword(credentialsId: 'd22c7eb5-448e-4b60-b728-6aebb40b19bd', usernameVariable: 'shlokabari06', passwordVariable: 'Tendulkar@3030')]) {
            sh "docker login -u $dockerUser -p $dockerPassword"
            sh "docker tag $containerName:$tag $dockerUser/$containerName:$tag"
            sh "docker push $dockerUser/$containerName:$tag"
            echo "Image push complete"
        }
		
	
    }
}






