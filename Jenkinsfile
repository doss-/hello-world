pipeline {
//    agent { docker { image 'ruby' } }
    agent any
    stages {
        stage('build') {
            steps {
		sh '''
			echo started multiline step
			./test.sh
                	ruby --version
			echo completed multiline step
		'''
            }
        }
    }
    post {
	always {
		echo "this runs always"
	}
	success {
		echo 'this runs on success'
	}
	failure {
		echo 'this runs on failuer'
	}
	unstable {
		echo 'This will run only if the run was marked as unstable'
	}
	changed {
        	echo 'This will run only if the state of the Pipeline has changed'
	        echo 'For example, if the Pipeline was previously failing but is now successful'
	}
    }
}
