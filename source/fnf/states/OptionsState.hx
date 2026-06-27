package fnf.states;

import flixel.FlxG;
import fnf.util.SaveData;

class OptionsState extends SimpleMenuState {
  public function new() super("Options", "G: alternar Game Boy Mode\nControles configurables y más opciones vivirán aquí.");
  override public function update(elapsed:Float):Void {
    super.update(elapsed);
    if (FlxG.keys.justPressed.G) {
      SaveData.options.gameBoyMode = !SaveData.options.gameBoyMode;
      SaveData.save();
    }
  }
}
