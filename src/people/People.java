/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package people;

import database.Database;

/**
 *
 * @author niclasjohansen
 */
public class People {

  private Database db;

  public People(Database db) {
    this.db = db;
  }

  public void getPeopleList() {
    db.query(" select teams.name AS team_name, people.name from team_member\n"
            + "JOIN people ON people.id = team_member.people_id \n"
            + "JOIN teams ON teams.id = team_member.team_id \n"
            + "WHERE team_member.type = 'coach'", rs -> {

              System.out.print("Teamname: " + rs.getString(1) + " ");
              System.out.println("Coachname: " + rs.getString(2) + " ");

            });
  }
}
