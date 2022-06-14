pipeline{
agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
        }
  tools{
      terraform 'terraform'
     }
	parameters {
	  choice choices: ['apply','destroy'],
	  description: 'do you want to create archetecture or destroy',
	  name: 'action'
	 } 
	 stages{
	 stage('Checkout_SCM'){
	   steps{
	      
	   }
	   stage('terraform init'){
	     steps{
	       sh 'terraform init'
		   }
	    }
		stage('terraform format check'){
	     steps{
	       sh 'terraform fmt'
		   }
	    }
		stage('terraform apply or destroy'){
	     steps{
	       sh 'terraform ${action} --auto-approve'
		   }
	    }
		
	 }
}