# ARK PES PORTAL DEMO
Portal Demo for ARK PES

### RUN INSTRUCTIONS

1. Clone the project to your local machine. Through the command-line, traverse to the portal-demo directory.

2. Run docker-compose up -d in the /portal-demo directory. This will build your containers running 2 containers, the portal application, and a MySQL container instance. you can confirm that both of these are running with docker container ps

#### SpringBoot Application
- Details on the schema, REST design, and future considerations can be found in the portal-demo-discussion.pdf in the main project directory.
- 
### MYSQL database
- The MySQL database should be automatically loaded with some sample data for the funds and investors table. These SQL queries are located in the /scripts/ directory.
