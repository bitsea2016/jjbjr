package com.pw282.swf.instructions
{
	import com.pw282.swf.data.BaseInstruction;
	import com.pw282.swf.data.EncodedU32;
	
	import flash.utils.ByteArray;
	
	
	/**
	 * 
	 * @author pw
	 * @Date：2011-7-22
	 */	
	public class O_setglobalslot extends BaseInstruction
	{
		public var slotindex:int = 0;
		public function O_setglobalslot(bt:ByteArray=null)
		{
			super(bt);
			this.opcode = 0x6f;
			this.opcodeName = "setglobalslot";
		}
		override public function read(bt:ByteArray):void{
			this.slotindex = EncodedU32.read(bt);
		}
		override public function write(bt:ByteArray):void{
			super.write(bt);
			EncodedU32.write(bt, this.slotindex);
		}
	}
}