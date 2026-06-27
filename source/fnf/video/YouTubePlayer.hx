package fnf.video;

class YouTubePlayer {
  public var videoId(default, null):String = "";
  public var playing(default, null):Bool = false;
  public function new() {}
  public function load(videoId:String):Void { this.videoId = videoId; playing = false; }
  public function play():Void playing = videoId.length > 0;
  public function pause():Void playing = false;
  public function resume():Void if (videoId.length > 0) playing = true;
}
