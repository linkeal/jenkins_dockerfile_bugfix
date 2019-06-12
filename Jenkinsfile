pipeline {
  agent any
  parameters {
    string(name: 'BASE_IMAGE', defaultValue: 'ubuntu', description: 'Base docker image name')
  }
  stages {
    stage('Run Dockerfile') {
	  agent {
	    dockerfile {
	      additionalBuildArgs "--build-arg BASE_IMAGE=${BASE_IMAGE}"
	      // additionalBuildArgs "--build-arg BASE_IMAGE=ubuntu:18.04" with hardcoded ubuntu image fails - it must be a parameter
	    }
	  }
      stages {
        stage("Print in Dockerfile"){
          steps {
            sh("uname -a")
            sh("cat /etc/*release")
          }
        }
      }
    }
  }
}
