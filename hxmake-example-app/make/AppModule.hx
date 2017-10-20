import hxmake.haxelib.HaxelibPlugin;
import hxmake.idea.IdeaPlugin;

class AppModule extends hxmake.Module {
	function new() {
		config.classPath = ["src"];
		config.dependencies = [
			"hxmake-example-mylib" => ""
		];

		apply(IdeaPlugin);
		apply(HaxelibPlugin);
	}
}