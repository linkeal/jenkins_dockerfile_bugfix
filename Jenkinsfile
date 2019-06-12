pipeline {
  agent any
  stages {
    stage('Run Dockerfile') {
	  agent {
	    dockerfile {
	      filename 'Dockerfile'
	      additionalBuildArgs '--build-arg BASE_IMAGE=ubuntu'
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
