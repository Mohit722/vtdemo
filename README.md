# Maven Java Application: 
This repository contains a Maven-based Java web application designed to demonstrate best practices in building, deploying, and testing a web application.

# Features

- Maven Build: Easy build and packaging of the application as a WAR file.
- Deployment: Simple deployment to any compatible web server (e.g., Tomcat, Jetty).
- Unit Testing: Configured with JaCoCo for code coverage reporting.


# Prerequisites

Make sure you have the following installed on your machine:

- Java JDK 11 or higher
- Maven 3.6.0 or higher

# Building the Application

To build the application, follow these steps:

1. Clone the repository:

   ```bash
   git clone <repository-url>
   ```

2. Navigate to the project directory:

   ```bash
   cd <project-directory>
   ```

3. Run the Maven clean install command:

   ```bash
   mvn clean install
   ```

This command will compile the code, run tests, and package the application into a WAR file located in the `target` directory.


# Deploying the WAR File

After a successful build, you can deploy the generated WAR file to your web server:

- Copy the WAR file from the `target` directory to the appropriate deployment directory of your web server.


# Unit Testing

You can add unit tests to the application as follows:

1. Create test classes under the `src/test/java` directory.
2. The project is configured with the JaCoCo plugin in the `pom.xml` file for generating code coverage reports.

To run the tests and generate the coverage report, use:

```bash
mvn test
```

The test results and coverage reports will be available in the `target/site/jacoco` directory.

To enhance the documentation for SonarQube integration in your Java Maven project, you can add a section explaining the following steps:


# SonarQube Configuration

1. Update the `pom.xml` for SonarQube:
   - After cloning the repository, open the `pom.xml` file and modify the SonarQube properties:
     ```xml
     <properties>
         <sonar.host.url>http://<SonarQube_Server_IP>:9000</sonar.host.url>
         <sonar.projectKey>YourProjectKey</sonar.projectKey>
         <sonar.login>your-sonarqube-token</sonar.login>
     </properties>
     ```
   - Replace `<SonarQube_Server_IP>` with your SonarQube server's IP or URL.
   - Update `YourProjectKey` with a unique key for your project. This key is used to identify your project in SonarQube.

2. Configure SonarQube Token in Jenkins:
   - Instead of hardcoding the SonarQube token in the `pom.xml` (which is a security risk), add the token as a Jenkins credential.
   - Use Jenkins credentials (like `DemoSonarqube`) within your pipeline to securely reference the token. This setup prevents exposing sensitive information in your code.

3. Modify Jenkins Pipeline:
   - In the Jenkins pipeline, use the credentials ID to access the SonarQube token dynamically:
     ```groovy
     withCredentials([string(credentialsId: 'DemoSonarqube', variable: 'SONAR_TOKEN')]) {
         sh 'mvn sonar:sonar -Dsonar.login=$SONAR_TOKEN'
     }
     ```
   - This approach ensures the SonarQube token is used securely during the analysis phase.

Adding this thing we are configuring SonarQube properly while emphasizing the importance of secure practices in Jenkins. 


# Conclusion

Feel free to explore and enhance the application as needed. Contributions and feedback are welcome!

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.


