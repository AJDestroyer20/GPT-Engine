package fnf.scripting;

typedef ScriptCall = { var name:String; var args:Array<Dynamic>; }

class LuaScriptGroup {
  public var history(default, null):Array<ScriptCall> = [];
  public function new() {}
  public function call(name:String, ?args:Array<Dynamic>):Void {
    history.push({ name: name, args: args == null ? [] : args });
  }
  public function callbacks():Array<String> return [
    "onCreate", "onCreatePost", "onUpdate", "onUpdatePost", "onBeatHit", "onStepHit",
    "onEvent", "onPause", "onResume", "onDestroy", "onSongStart", "onSongEnd"
  ];
}
