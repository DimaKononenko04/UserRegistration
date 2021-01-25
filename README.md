# UserRegistration
Project simulates user registration and log in
To quickly spin-up a project do the following:
1. Install Docker desktop and run it
2. open terminal and cd into project directory
3. Run "docker build -t my-spring-app ." command - this will buid a Docker image of an app called "my-spring-app"
4. Open docker-compose.yml and under services: docker-postgres: volumes enter path to your local folder "C:/Users/Path/To/Folder:/var/lib/postgresql/data"
5. Run "docker-compose up" command
6. Wait for all services to tart

How to use the project:
1. Navigate to "localhost:8080/api/v1/registration" in your browser and perform post request with body:
 Example:
 {
    "firstName": "John",
    "lastName": "Doe",
    "email": "john.doe@domain.com",
    "password": "password"
}
2. If request was successful you will see a generated token as a response
3. Navigate to "http://localhost:1080/" - this will open maildev (simulation of email box):
    3.1. Open new email
    3.2. Click on "Activate Now" to verify your email
    3.3. You shall see "Confirmed"
4. Now, try to login:
    4.1. Navigate to "http://localhost:1080/login"
    4.2. Enter credentials that you have submitted in step 1.
