package hxmake.examples.mylib;

import utest.Assert;

class MyLibTest {

	public function new() {}

	public function testIntPowerTwo() {
		Assert.equals(0, MyLib.imul4(0));
		Assert.equals(4, MyLib.imul4(1));
		Assert.equals(8, MyLib.imul4(2));
		Assert.equals(0x8000, MyLib.imul4(0x2000));
	}
}