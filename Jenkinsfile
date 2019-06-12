pipeline {
  agent any
  parameters {
    string(name: 'BASE_IMAGE', defaultValue: 'ubuntu', description: 'Base docker image name')
  }
  stages {
    stage('Run Dockerfile') {
	  agent {
	    dockerfile {
	      filename 'Dockerfile'
	      additionalBuildArgs "--build-arg BASE_IMAGE=${BASE_IMAGE}"
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
