pipeline{
    agent any
    tools{
<<<<<<< HEAD
      maven 'mymaven'
      JDK 'myjava'

    }
    parameters
    {
      string(name: 'VERSION',defaultValue:"",description:'version to deploy')
      choice(name:'VERSION',choices:['1.1.0','1.2.0','1.3.0'])
      booleanParam(name:'executeTests',defaultValue:true,description:"Testcases")
    }
    environment {
    NEW_VERSION='1.3.0'
=======
        maven 'mymaven'
        jdk 'myjava'
>>>>>>> b5f21b25659c7a2acb91f6a9914233cd57407da3
    }
    stages{
        stage("Compile"){
            steps{
              script{
                 echo "Compiling the code"
<<<<<<< HEAD
		 sh 'mvn compile'
=======
                 sh 'mvn compile'
>>>>>>> b5f21b25659c7a2acb91f6a9914233cd57407da3
              }
            }
        }
        stage("test"){
             steps{
                script{
                  echo "Testing the code"
<<<<<<< HEAD
		  sh 'mvn test'
              }
=======
                  sh 'mvn test'
                  }
             }
             post{
                 always{
                     junit 'target/surefire-reports/*.xml'
                 }
>>>>>>> b5f21b25659c7a2acb91f6a9914233cd57407da3
             }

post {
always{
junit 'target/surefire-reports/*.xml'

}
}


        
	}


        stage("Package"){
            

	     steps{
                script{
                  echo "Packaging the code"
<<<<<<< HEAD
		  sh 'mvn package'

=======
                  sh 'mvn package'
>>>>>>> b5f21b25659c7a2acb91f6a9914233cd57407da3
              }
             }
        }
    }
}
