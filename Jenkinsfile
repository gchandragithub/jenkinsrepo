pipeline {
      agent any
    
      stages {
          stage('ExecuteTestScript') {
              steps {
                      // Run it!
                      sh 'bash gs-spring-boot/initial/testerworkflow.sh'
                      sh 'bash gs-spring-boot/initial/test2stage.sh'
                      /*sh 'sleep 10'*/
                      /*sh 'java --version*/
                      /*sh 'export JAVA_HOME=`/usr/libexec/java_home -v 10.0.2`*/
                      /*sh 'export ENVIRONMENT_STAGEPROD=8088'*/
                      /*sh 'gs-spring-boot/initial/gradlew build'*/
                      /*sh "nohup java -jar /Users/Shared/Jenkins/Home/jenkinsrepo/gs-spring-boot/initial/build/libs/gs-spring-boot-0.1.0.jar &"*/
                    }
              }
         }
}
