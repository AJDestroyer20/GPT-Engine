package fnf.states;

import flixel.FlxState;
import fnf.game.Conductor;
import fnf.scripting.LuaScriptGroup;

class PlayState extends FlxState {
  public var conductor = new Conductor();
  public var scripts = new LuaScriptGroup();

  override public function create():Void {
    super.create();
    scripts.call("onCreate");
    scripts.call("onCreatePost");
  }

  override public function update(elapsed:Float):Void {
    scripts.call("onUpdate", [elapsed]);
    super.update(elapsed);
    conductor.update(elapsed);
    if (conductor.consumeBeat()) scripts.call("onBeatHit", [conductor.curBeat]);
    if (conductor.consumeStep()) scripts.call("onStepHit", [conductor.curStep]);
    scripts.call("onUpdatePost", [elapsed]);
  }
}
