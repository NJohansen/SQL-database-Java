/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package People;

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
    db.query(" select * from team_member \n"
            + "JOIN people ON people.id = team_member.people_id WHERE team_member.type = 'coach'", rs -> {

              System.out.print("Teamname: " + rs.getString(2) + " ");
              System.out.println("Coachname: " + rs.getString(4) + " ");

            });
  }
}
