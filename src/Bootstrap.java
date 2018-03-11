
import People.People;
import Team.Team;
import Tournament.Tournament;
import database.Database;

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

    //  Input a number to get the tournament with the inputnumbers amount of teams
    // A) List of all names of coaches and the team they belong to.
    System.out.println("\nList of all names of coaches and the team they belong to:");
    p.getPeopleList();

    //  B) List of all names of people (players and coachers) who are on a
    //  team, which has won at least one tournament.
    System.out.println("\nList of all names of people (players and coachers) who are on a\n"
            + "team, which has won at least one tournament:");
    tournaments.getPeopleWhoWon();

    // C) List of all names of teams and the number of players on that team
    System.out.println("\nList of all names of teams and the number of players on that team");
    t.getAmountOfTeamPlayer();


    /* The user inputs a number. Your program should output the names of
        all tournaments, with at least that many participating teams. Example:
        The user writes 5. You output ‘Cool Esports’ since this is the only
        tournament with at least 5 participating teams. */
    System.out.println("\nThe user inputs a number. Your program should output the names of\n"
            + "all tournaments, with at least that many participating teams. Example:\n"
            + "The user writes 5. You output ‘Cool Esports’ since this is the only\n"
            + "tournament with at least 5 participating teams.\n");
    tournaments.getParticipatingTeams();
  }
}
