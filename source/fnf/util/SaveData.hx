package fnf.util;

import flixel.FlxG;

typedef EngineOptions = { var gameBoyMode:Bool; var downscroll:Bool; var noteOffset:Float; }

class SaveData {
  public static var options:EngineOptions = { gameBoyMode: false, downscroll: false, noteOffset: 0 };
  public static function load():Void {
    FlxG.save.bind("fnf-gpt-engine", "gpt-engine");
    if (FlxG.save.data.options != null) options = FlxG.save.data.options;
  }
  public static function save():Void {
    FlxG.save.data.options = options;
    FlxG.save.flush();
  }
}
