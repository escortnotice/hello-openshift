pipeline {



  agent any



  environment {

    OCP_CRED="${params.OCP_CRED}"

    SERVICE="zookeeper"

    IMAGE_TAG="${params.IMAGE_TAG}"

    BRANCH="${params.BRANCH}"

    ARTIFACTORY_DOCKER_CRED="${params.ARTIFACTORY_DOCKER_CRED}"

  }



  stages {

    stage('Set Build Name') {

      steps { 

        echo "Set Build Name" 

        echo("OCP_CRED: ${OCP_CRED}")  
        echo("IMAGE_TAG: ${IMAGE_TAG}")      
        echo("BRANCH: ${BRANCH}")  
        echo("ARTIFACTORY_DOCKER_CRED: ${ARTIFACTORY_DOCKER_CRED}")  


        //withFolderProperties{

         // echo("OCP: ${env.OCP}")

          //script { 

           // currentBuild.displayName = "${BUILD_NUMBER} - Build HelloOpenshiftApp - ${OCP}"
           // echo("currentBuild.displayName: ${currentBuild.displayName}")
           echo("currentBuild.displayName: ${BUILD_NUMBER} - Build HelloOpenshiftApp - ${OCP}")

            //currentBuild.description = "${BRANCH} - ${GIT_COMMIT}"   
           // echo("currentBuild.description: ${currentBuild.description}")

         // }    

        //}

      }

    }
  }
}
