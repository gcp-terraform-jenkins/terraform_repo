pipeline{
agent any
  options {
    buildDiscarder(logRotator(numToKeepStr: '3', artifactNumToKeepStr: '3'))
        }
  tools{
      terraform 'terraform'
     }
	/*parameters {
	  choice choices: ['apply','destroy'],
	  description: 'do you want to create archetecture or destroy',
	  name: 'action'
	 } */
	 stages{
	 stage('Checkout_SCM'){
	   steps{
	      checkout([$class: 'GitSCM',
		   branches: [[name: '*/master']],
		    extensions: [],
			 userRemoteConfigs: [[credentialsId: 'github_cred',
			  url: 'https://github.com/gcp-terraform-jenkins/terraform_repo.git']]])
	   }
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
		/*stage('terraform apply or destroy'){
	     steps{
	       sh 'terraform ${action} --auto-approve'
		   }
	    }*/
		  stage('Approval') {
           steps {
              script {
          def userInput = input(id: 'confirm',
		  message: 'Apply Terraform?', 
		  parameters: [ [$class: 'BooleanParameterDefinition', 
		  defaultValue: false, 
		  description: 'Apply terraform', 
		  name: 'confirm'] ])
        }
      }
    }
	 stage('TF Apply') {
      steps {
          sh 'terraform apply -input=false myplan'
          }
	   }

	 }
}