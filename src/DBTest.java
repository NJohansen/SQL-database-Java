
import Team.Team;
import People.People;
import Tournament.Tournament;

/*
	Run with:
	java -cp postgresql-42.2.1.jar:. DBTest
 */
public class DBTest {

  public static void main(String[] args) {
    Team team = new Team();
    People p = new People();
    Tournament t = new Tournament();

    p.getTeamList();
    team.getTeamList();

  }

}
