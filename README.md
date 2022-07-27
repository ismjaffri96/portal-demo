# ARK PES PORTAL DEMO

### RUN INSTRUCTIONS

1. Clone the project to your local machine. Through the command-line, traverse to the portal-demo directory.

2. Run ```docker-compose up -d``` in the ```/portal-demo``` directory. This will build your containers running 2 containers, the portal application, and a MySQL container instance. You can confirm that both of these are running with ```docker container ps```. You should see two container distinct container ID numbers in the background.

### SPRING BOOT APPLICATION
- ```http://localhost:6868/api```
- I used a spring starter project from https://start.spring.io/ for this demonstration. This included an embedded webserver and a lot of dependencies to get started quickly.
- Details on the schema, REST design, and future considerations can be found in the ```portal-demo-discussion.pdf``` in the main project directory.

| HTTP METHOD      | ENDPOINT | CRUD ACTION      |
| :--------        |    :----:   |          ---: |
| GET      | /funds       | Read a list of funds   |
| GET   | /funds/{fundId}        | Read a single fund      |
| POST   | /funds        | Create a new fund      |
| PUT   | funds        | Update an existing fund      |
| DELETE   | /funds/{fundId}        | Delete an existing fund      |

With our bidirectional Many-To-Many mappings between Fund and Investor, we can also initiate associations between these entities through requests with these following endpoints

| HTTP METHOD      | ENDPOINT | CRUD ACTION      |
| :--------        |    :----:   |          ---: |
| GET      | /funds/1/investors      | Reads the investors associated with fund of ID 1|
| POST      | /funds/1/investors      | Updates the investors associated with fund of ID 1|

The schema can be found in the ```portal-demo-discussion.pdf```



### MYSQL DATABASE
- The MySQL database should be automatically loaded with some sample data for the funds and investors table. These SQL queries are located in the ```/scripts/``` directory.
- If for some reason the SQL scripts do not initialize automatically on container startup, the script is located in the scripts directory and the schema and database can be loaded on your local machine. I'm a bit new to docker and docker-compose, so let me know if there's any problems and I can give a demonstration instead

### CONCLUSION
This was a timeboxed demonstration. I look forward to more discussions where we can discuss design decisions, security concerns, and other ways to improve the project. Please shoot me an email at ismjaffri96@gmail.com if there are any questions about design or difficulties running the program. Look forward to speaking more about the opportunity at ARK PES!
