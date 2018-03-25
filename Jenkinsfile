pipeline {
//    agent { docker { image 'ruby' } }
    agent any
    stages {
        stage('build') {
            steps {
		sh 'apk add ruby'
		sh 'apk info -e ruby'
                sh 'ruby --version'
            }
        }
    }
}
