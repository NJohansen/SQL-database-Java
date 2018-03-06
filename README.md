# SQL database project

This repo is a boilerplate NetBeans project, you can fork this to get started
on your own projects.

## Get started

Clone this repository to a local directory.
```sh
git clone https://github.com/NJohansen/SQL-database-Java
```
Open the cloned repository in your NetBeans IDE and everything should be
working out of the box.
If you dont use NetBeans you can compile the project with [`nbcompile`](https://github.com/kvartborg/nbcompile)
directly from the terminal.

### Configuration
Create a new file named `Config.java` within the src dir. This files should include the authentication credentials for the postgres database.
```java
public class Config {
  public String host = "jdbc:postgresql://localhost:5432";
  public String user = "user";
  public String password = "password";
}
```

## License

This project is licensed under the [MIT License](https://github.com/kvartborg/1-semesterprojekt/blob/master/LICENSE).
