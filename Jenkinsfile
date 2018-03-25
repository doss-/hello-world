pipeline {
//    agent { docker { image 'ruby' } }
    agent any
    stages {
        stage('build') {
            steps {
		sh 'pwd'
		sh './test.sh'
                sh 'ruby --version'
            }
        }
    }
}
