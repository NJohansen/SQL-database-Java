/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package team;

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
    db.query("SELECT teams.name ,COUNT(*) as members FROM team_member\n"
            + "JOIN teams ON team_member.team_id = teams.id \n"
            + "WHERE type='player' GROUP BY teams.name", rs -> {
              System.out.print("Teamname: " + rs.getString(1) + " ");
              System.out.println("Number of players: " + rs.getString(2) + " ");
            });
  }
}
