pipeline{
    agent any
    parameters{
        string(name: 'VERSION',defaultValue:"",description: 'version to deploy')
        choice(name: 'VERSION',choices:['1.1.0','1.2.0','1.3.0'])
        booleanParam(name:'executeTests',defaultValue: true,description:"Testcases")
    }
    environment{
        NEW_VERSION='1.3.0'
    }
    stages{
        stage("Compile"){
            steps{
              script{
                 echo "Compiling the code"
              }
            }
        }
        stage("test"){
             steps{
                script{
                  echo "Testing the code"
              }
             }
             post{
            always{
                 echo "Testing is completed"
            }
           
        }
        }
        
        stage("Package"){
            when{
                expression{
                    params.executeTests == true
                }
            }
             steps{
                script{
                  echo "Packaging the code ${NEW_VERSION}"
              }
             }
        }
    }
}