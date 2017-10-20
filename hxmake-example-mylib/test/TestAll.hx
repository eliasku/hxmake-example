package ;

import hxmake.examples.mylib.MyLibTest;
import utest.Runner;
import utest.ui.Report;

class TestAll {

	public static function addTests(runner:Runner) {
		runner.addCase(new MyLibTest());
	}

	public static function main() {
		var runner = new Runner();
		addTests(runner);
		run(runner);
	}

	static function run(runner:Runner) {
		Report.create(runner);
		runner.run();
	}
}