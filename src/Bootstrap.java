
import People.People;
import Team.Team;
import Tournament.Tournament;
import javafx.stage.Stage;
import database.Database;
import gui.Layout;
import java.util.Scanner;

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

    // Input a number to get the tournament with the inputnumbers amount of teams
    // Prints a tournament list
    System.out.println("\nTournament List:");
    tournaments.getPeopleWhoWon();

    // List of all names of coaches and the team they belong to.
    System.out.println("\nList of all names of coaches and the team they belong to:");
    p.getPeopleList();

    /* List of all names of people (players and coachers) who are on a
    team, which has won at least one tournament. */
    System.out.println("\nTeam List:");
    t.getTeamList();

    // List of all names of teams and the number of players on that team
    System.out.println("\nList of all names of teams and the number of players on that team");
    t.getAmountOfTeamPlayer();

  }
}
