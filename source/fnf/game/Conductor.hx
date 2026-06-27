package fnf.game;

class Conductor {
  public var bpm:Float = 100;
  public var songPosition:Float = 0;
  public var curStep(default, null):Int = 0;
  public var curBeat(default, null):Int = 0;
  var lastStep = -1;
  var lastBeat = -1;

  public function new() {}
  public function update(elapsed:Float):Void {
    songPosition += elapsed * 1000;
    curStep = Math.floor(songPosition / stepCrochet());
    curBeat = Math.floor(curStep / 4);
  }
  public inline function crochet():Float return 60000 / bpm;
  public inline function stepCrochet():Float return crochet() / 4;
  public function consumeStep():Bool { if (curStep != lastStep) { lastStep = curStep; return true; } return false; }
  public function consumeBeat():Bool { if (curBeat != lastBeat) { lastBeat = curBeat; return true; } return false; }
}
