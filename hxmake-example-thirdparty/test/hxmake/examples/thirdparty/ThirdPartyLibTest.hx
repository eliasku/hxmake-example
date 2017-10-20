package hxmake.examples.thirdparty;

import utest.Assert;

class ThirdPartyLibTest {

	public function new() {}

	public function testIntPowerTwo() {
		Assert.equals(0, ThirdPartyLib.imul2(0));
		Assert.equals(4, ThirdPartyLib.imul2(2));
		Assert.equals(0x2000, ThirdPartyLib.imul2(0x1000));
	}
}