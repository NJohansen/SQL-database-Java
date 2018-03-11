
import people.People;
import tournament.Tournament;
import database.Database;
import java.util.Scanner;
import team.Team;

/**
 * Bootstrap simple javafx application
 */
public class Bootstrap {

  /**
   * Launch the javafx application
   *
   * @param args cli arguments
   */
  public static void main(String[] args) {
    Config config = new Config();
    Database db = new Database(
            config.host,
            config.user,
            config.password
    );

    // Initialize instances
    People p = new People(db);
    Team t = new Team(db);
    Tournament tournaments = new Tournament(db);
    Scanner sc = new Scanner(System.in);
    boolean running = true;

    while (running) {
      System.out.println("\nInput the character of the task you want to recieve (Write HELP if you need help):");
      String taskInput = sc.nextLine().toUpperCase();
      switch (taskInput) {
        case "A":
          //  Input a number to get the tournament with the inputnumbers amount of teams
          // A) List of all names of coaches andthe team they belong to.
          System.out.println("\nList of all names of coaches and the team they belong to:");
          p.getPeopleList();
          break;
        case "B":
          //  B) List of all names of people (players and coachers) who are on a
          //  team, which has won at least one tournament.
          System.out.println("\nList of all names of people (players and coachers) who are on a\n"
                  + "team, which has won at least one tournament:");
          tournaments.getPeopleWhoWon();
          break;
        case "C":
          // C) List of all names of teams and the number of players on that team
          System.out.println("\nList of all names of teams and the number of players on that team");
          t.getAmountOfTeamPlayer();
          break;
        case "D":
          /* The user inputs a number. Your program should output the names of
        all tournaments, with at least that many participating teams. Example:
        The user writes 5. You output ‘Cool Esports’ since this is the only
        tournament with at least 5 participating teams. */
          tournaments.getParticipatingTeams();
          break;
        case "HELP":
          System.out.println("Commands\n" + "A - returns task A\n" + "B - returns task B\n" + "C - returns task C\n" + "D - returns task D\n"
                  + "QUIT - quits the program\n");
          break;
        case "QUIT":
          running = false;
          break;
        default:
          System.out.println("You didn't insert a correct character");
          break;

      }
    }
  }
}
