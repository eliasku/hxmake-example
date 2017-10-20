package hxmake.examples.mylib;

using hxmake.examples.thirdparty.ThirdPartyLib;

class MyLib {
	public static function imul4(a:Int):Int {
		return a.imul2().imul2();
	}
}
