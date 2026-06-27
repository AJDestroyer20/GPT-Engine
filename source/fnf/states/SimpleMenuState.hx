package fnf.states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;

class SimpleMenuState extends FlxState {
  final title:String;
  final body:String;

  public function new(title:String, body:String) {
    super();
    this.title = title;
    this.body = body;
  }

  override public function create():Void {
    super.create();
    add(new FlxText(40, 40, FlxG.width - 80, title, 30).setFormat(null, 30, FlxColor.YELLOW, CENTER));
    add(new FlxText(80, 140, FlxG.width - 160, body + "\n\nESC: volver", 20).setFormat(null, 20, FlxColor.WHITE, LEFT));
  }

  override public function update(elapsed:Float):Void {
    super.update(elapsed);
    if (FlxG.keys.justPressed.ESCAPE) FlxG.switchState(new MainMenuState());
  }
}
