
import javafx.application.Application;
import javafx.stage.Stage;
import database.Database;
import gui.Layout;

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

    db.query("SELECT * FROM test3", rs -> {
      System.out.print(rs.getString(1) + " ");
      System.out.println(rs.getString(2) + " ");
    });
    //launch(args);
  }

  /**
   * Put your glue code here.
   *
   * @param stage
   */
  public void start(Stage stage) {
    new Layout(stage);
  }

}
