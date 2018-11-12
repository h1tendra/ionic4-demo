pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Installing deps..'
                bat 'npm i'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                bat 'npm run test'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
                bat 'npm run build'
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