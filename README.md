# ARK PES PORTAL DEMO

### RUN INSTRUCTIONS

1. Clone the project to your local machine. Through the command-line, traverse to the portal-demo directory.

2. Run ```docker-compose up -d``` in the ```/portal-demo```. This will build your containers running 2 containers, the portal application, and a MySQL container instance. you can confirm that both of these are running with ```docker container ps```. You should see two container distinct container ID's in the background.

### SPRING BOOT APPLICATION
- Details on the schema, REST design, and future considerations can be found in the ```portal-demo-discussion.pdf``` in the main project directory.
- I used a spring starter project from https://start.spring.io/ for this demonstration. This included an embedded webserver and a lot of dependencies to get started quickly.

### MYSQL database
- The MySQL database should be automatically loaded with some sample data for the funds and investors table. These SQL queries are located in the /scripts/ directory.
- Getting these instances dockerized was quite tricky. Communication between the Spring Boot and MySQL containers should work!

This was a timeboxed demonstration. I look forward to more discussions where we can discuss design decisions, security concerns, and other ways to improve the project. Please shoot me an email at ismjaffri96@gmail.com if there are any questions about design or difficulties running the program. Look forward to speaking more about the opportunity at ARK PES!
