import flixel.FlxGame;
import openfl.display.Sprite;
import fnf.states.BootState;

class Main extends Sprite {
  public function new() {
    super();
    addChild(new FlxGame(1280, 720, BootState, 60, 60, true));
  }
}
