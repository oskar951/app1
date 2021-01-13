pipeline {
	agent any
	
	stages{
		stage('Dependencies'){
			steps{
				sh 'chmod +x ./script/*'
				sh 'bash ./script/installation.sh'
				sh './script/installdocker.sh'
			    }
			}
		stage('Deploying Container'){
			steps{
				sh './script/dockerrun.sh'
			    }
			}	

	}

}
