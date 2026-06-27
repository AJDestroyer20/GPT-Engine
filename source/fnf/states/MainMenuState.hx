package fnf.states;

import flixel.FlxG;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import fnf.editors.EditorMenuState;

class MainMenuState extends FlxState {
  final items = ["Story Mode", "Freeplay", "Options", "Credits", "Editors"];
  var selected = 0;
  var labels:Array<FlxText> = [];

  override public function create():Void {
    super.create();
    add(new FlxText(0, 40, FlxG.width, "FNF: GPT Engine\n(clean-room joke experiment)", 28).setFormat(null, 28, FlxColor.LIME, CENTER));
    for (i in 0...items.length) {
      var text = new FlxText(0, 180 + i * 54, FlxG.width, items[i], 24).setFormat(null, 24, FlxColor.WHITE, CENTER);
      labels.push(text);
      add(text);
    }
    refresh();
  }

  override public function update(elapsed:Float):Void {
    super.update(elapsed);
    if (FlxG.keys.justPressed.UP) change(-1);
    if (FlxG.keys.justPressed.DOWN) change(1);
    if (FlxG.keys.justPressed.ENTER) accept();
  }

  function change(delta:Int):Void {
    selected = (selected + delta + items.length) % items.length;
    refresh();
  }

  function refresh():Void {
    for (i in 0...labels.length) labels[i].color = i == selected ? FlxColor.YELLOW : FlxColor.WHITE;
  }

  function accept():Void {
    switch (items[selected]) {
      case "Story Mode": FlxG.switchState(new StoryMenuState());
      case "Freeplay": FlxG.switchState(new FreeplayState());
      case "Options": FlxG.switchState(new OptionsState());
      case "Credits": FlxG.switchState(new CreditsState());
      case "Editors": FlxG.switchState(new EditorMenuState());
    }
  }
}
