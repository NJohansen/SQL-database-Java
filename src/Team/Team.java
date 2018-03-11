/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Team;

import database.Database;

/**
 *
 * @author niclasjohansen
 */
public class Team {

  private final Database db;

  public Team(Database db) {
    this.db = db;
  }

  public void getTeamList() {

    db.query("select * from Teams", rs -> {
      System.out.print("Teamname: " + rs.getString(1) + " ");
      System.out.println("Country: " + rs.getString(2) + " ");
    });

  }

  public void getAmountOfTeamPlayer() {
    db.query("SELECT team_name,COUNT(*) as members\n"
            + "FROM team_member WHERE type='player' GROUP BY team_name ", rs -> {
              System.out.print("Teamname: " + rs.getString(1) + " ");
              System.out.println("Number of players: " + rs.getString(2) + " ");
            });
  }
}
