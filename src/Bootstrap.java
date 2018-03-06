
import javafx.application.Application;
import javafx.stage.Stage;
import gui.Layout;

/**
 * Bootstrap simple javafx application
 */
public class Bootstrap extends Application {

  /**
   * Launch the javafx application
   *
   * @param args cli arguments
   */
  public static void main(String[] args) {
    launch(args);
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
