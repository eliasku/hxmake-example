import hxmake.haxelib.HaxelibPlugin;
import hxmake.idea.IdeaPlugin;

@:include("hxmake-example-mylib")
@:include("hxmake-example-app")
@:include("hxmake-example-thirdparty")
class MakeExampleModule extends hxmake.Module {
	function new() {
		apply(IdeaPlugin);
		apply(HaxelibPlugin);
	}
}