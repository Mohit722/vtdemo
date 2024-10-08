pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                script {
                    // Check if the current branch is the specific master branch
                    if (env.GIT_BRANCH == 'origin/master') {
                        echo "It's working for the master branch!"
                        // Add your build steps here
                    } else {
                        echo "Not the target branch. Skipping build."
                    }
                }
            }
        }
    }
}
