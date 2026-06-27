package fnf.states;

import flixel.FlxG;
import flixel.FlxState;
import fnf.modding.ModManager;
import fnf.util.SaveData;

class BootState extends FlxState {
  override public function create():Void {
    super.create();
    SaveData.load();
    ModManager.instance.refresh();
    FlxG.switchState(new MainMenuState());
  }
}
