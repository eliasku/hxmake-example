package ;
import hxmake.test.TestTask;
import hxmake.haxelib.HaxelibExt;
import hxmake.haxelib.HaxelibPlugin;
import hxmake.idea.IdeaPlugin;

using hxmake.haxelib.HaxelibPlugin;

@:module_path("hxmake-example-thirdparty")
class ExternalThirdPartyModule extends hxmake.Module {
	function new() {
		config.classPath = ["src"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(IdeaPlugin);
		apply(HaxelibPlugin);

		library(function(library:HaxelibExt) {
			library.updateJson = false;
		});

		var test = new TestTask();
		test.targets = ["neko"];
		test.libraries = ["hxmake-example-thirdparty"];
		// Modify configuration here
		task("test", test);
	}
}