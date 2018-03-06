/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tournament;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author niclasjohansen
 */
public class Tournament {

  public void getTeamList() {
    try {
      Class.forName("org.postgresql.Driver");
    } catch (java.lang.ClassNotFoundException e) {
      System.out.println(e);
    }

    String url = "jdbc:postgresql://baasu.db.elephantsql.com:5432/ncpicdys";
    String username = "ncpicdys";
    String password = "pNWAGejzcJxCRoluHxYc2BvDoeGchZxG";

    try {
      Connection db = DriverManager.getConnection(url, username, password);

      Statement st = db.createStatement();
      ResultSet rs = st.executeQuery("UPDATE teams SET name='Hold 3' WHERE name = 'Niclas3'");
      while (rs.next()) {

        System.out.print("Country: " + rs.getString(2) + " ");
        System.out.println("Coach: " + rs.getString(4) + " ");
      }
      rs.close();
      st.close();

    } catch (Exception e) {
      System.out.println(e);
    }
  }
}
