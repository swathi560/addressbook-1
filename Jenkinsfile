pipeline{
    agent any
    tools{

      maven 'mymaven'
      jdk 'myjava'

    }
    parameters
    {
      string(name: 'VERSION',defaultValue:"",description:'version to deploy')
      choice(name:'VERSION',choices:['1.1.0','1.2.0','1.3.0'])
      booleanParam(name:'executeTests',defaultValue:true,description:"Testcases")
    }
    environment {
    NEW_VERSION='1.3.0'

    }
    stages{
        stage("Compile"){
            steps{
              script{
                 echo "Compiling the code"
		 sh 'mvn compile'

              }
            }
        }
        stage("test"){
             steps{
                script{
                  echo "Testing the code"
  sh 'mvn test'
              }
                  }

             post{
                 always{
                     junit 'target/surefire-reports/*.xml'
                 }

}
       
       }




        stage("Package"){
            

	     steps{
                script{
                  echo "Packaging the code"

		  sh 'mvn package'


              }
             }
        }
<<<<<<< HEAD

	stage("Deploy")
	{
	when{
	expression{
	BRANCH_NAME == 'master'
=======
        stage("Deploy"){
            when{
                expression{
                    BRANCH_NAME == 'master'
                }
            }
             steps{
                script{
                  echo "Deploy the app"
                 
              }
             }
        }
>>>>>>> c4266d3abb2efff61d7a215c583a87a1c0d805c5
    }
    }

steps{
scripts{
echo "Deploy the app"
}
}
}
}
}

