pipeline {
  agent any
  stages {
    stage('Run Dockerfile') {
	  agent {
	    dockerfile {
	      additionalBuildArgs "--build-arg BASE_IMAGE=ubuntu:18.04"
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
