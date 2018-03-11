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
    db.query("select people.name from team_member"
            + "JOIN people ON team_member.people_id = people.id"
            + "JOIN tournament_participant ON team_member.team_id = tournament_participant.team_id"
            + "WHERE tournament_participant.winner > 0", rs -> {
              System.out.print("Name: " + rs.getString(1) + " ");
              System.out.print("Price: " + rs.getString(2) + "BTC" + " ");
              System.out.println("Date: " + rs.getString(3) + " ");
            });
  }

  public void getParticipatingTeams() {
    Scanner sc = new Scanner(System.in);
    int inputNumber = sc.nextInt();

    db.query("select teams.name, (select count(*) FROM tournament_participant GROUP BY tournament_id) FROM tournament_participant "
            + "WHERE tournament_", rs -> {
              System.out.println("Team name: " + rs.getString(1));
            });
  }
}
