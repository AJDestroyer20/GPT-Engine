package fnf.modding;

#if sys
import sys.FileSystem;
#end

class ModManager {
  public static final instance = new ModManager();
  public var enabledMods(default, null):Array<String> = [];

  public function new() {}

  public function refresh():Void {
    enabledMods = [];
    #if sys
    if (!FileSystem.exists("mods")) return;
    for (entry in FileSystem.readDirectory("mods")) {
      var folder = 'mods/$entry';
      if (FileSystem.isDirectory(folder)) enabledMods.push(entry);
    }
    #end
  }

  public function resolve(path:String):String {
    #if sys
    for (mod in enabledMods) {
      var candidate = 'mods/$mod/$path';
      if (FileSystem.exists(candidate)) return candidate;
    }
    #end
    return 'assets/$path';
  }
}
