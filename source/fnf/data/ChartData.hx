package fnf.data;

typedef SongNote = { var time:Float; var lane:Int; var length:Float; var mustHit:Bool; }
typedef SongEvent = { var time:Float; var name:String; var value1:String; var value2:String; }
typedef SongChart = { var song:String; var bpm:Float; var speed:Float; var notes:Array<SongNote>; var events:Array<SongEvent>; }
