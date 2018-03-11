/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tournament;

import database.Database;
import java.util.Scanner;

/**
 *
 * @author niclasjohansen
 */
public class Tournament {

  private final Database db;

  public Tournament(Database db) {
    this.db = db;
  }

  public void getPeopleWhoWon() {
    db.query("select people.name, teams.name AS team_name from team_member\n"
            + "JOIN people ON team_member.people_id = people.id\n"
            + "JOIN tournament_participant ON team_member.team_id = tournament_participant.team_id\n"
            + "JOIN teams ON team_member.team_id = teams.id\n"
            + "WHERE tournament_participant.winner = true\n"
            + "GROUP BY people.name, teams.name\n"
            + "ORDER BY people.name ASC", rs -> {
              System.out.print("Name: " + rs.getString(1) + " ");
              System.out.println("Teamname: " + rs.getString(2));
            });
  }

  public void getParticipatingTeams() {
    Scanner sc = new Scanner(System.in);

    System.out.println("Input a number and get the output with names of\n"
            + "all tournaments, with at least that many participating teams: ");
    int inputNumber = sc.nextInt();

    db.query("select tournaments.name AS tournament_name  FROM tournament_participant\n"
            + "JOIN tournaments ON tournaments.id = tournament_participant.tournament_id\n"
            + "GROUP BY tournaments.name\n"
            + "HAVING count(tournament_participant.team_id) >=" + inputNumber, rs -> {
              System.out.println("Team name: " + rs.getString(1));
            });
  }
}
