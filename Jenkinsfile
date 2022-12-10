pipeline {
  agent { label 'git'}
  triggers {
   pollSCM ('* * * * *') 
   }
   stages {
    stage ('write a code') {
      steps {
        git url: 'https://github.com/DevProjectsForDevOps/StudentCoursesRestAPI.git',
         branch : 'main'
      }
    }
    

      stage ('build a image') {
        steps {
        sh 'git clone https://github.com/DevProjectsForDevOps/StudentCoursesRestAPI.git'
        sh 'cd StudentCoursesRestAPI'
          sh 'docker image build -t student:1.0 . '
          sh 'docker image tag student:1.2 shilpa-ra/student:1.0'
          sh 'docker image push shilpa-ra/student:1.0'
          sh 'docker container run --name my-student-1 -d -p 8099:8080 shilpa-ra/student:1.0'
               // sh 'docker compose up -d'
        }
      }
   }
}
