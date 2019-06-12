pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      additionalBuildArgs '--build-arg BASE_IMAGE=ubuntu'
      reuseNode true
    }
  }
  stages {
    stage('Print') {
      steps {
        sh("echo running inside of the container")
      }
    }
  }
}
