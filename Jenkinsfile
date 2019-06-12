def BASE_IMAGE="ubuntu"

pipeline {
  agent any
  stages {
    stage('Run Dockerfile') {
	  agent {
	    dockerfile {
	      filename 'Dockerfile'
	      additionalBuildArgs '--build-arg BASE_IMAGE=${BASE_IMAGE}'
	      reuseNode true
	    }
	  }
      stages {
        stage("Print in Dockerfile"){
          steps {
            sh("echo running inside of the container")
          }
        }
      }
    }
  }
}
