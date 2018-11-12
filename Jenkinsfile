pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'npm run build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                bat 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                bat 'ionic cordova build browser'
            }
        }
    }
}