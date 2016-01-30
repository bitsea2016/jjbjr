package com.pw282.swf.instructions
{
	import com.pw282.swf.data.BaseInstruction;
	
	import flash.utils.ByteArray;
	
	
	/**
	 * 
	 * @author pw
	 * @Date：2011-7-22
	 */	
	public class O_bitxor extends BaseInstruction
	{
		public function O_bitxor(bt:ByteArray=null)
		{
			super(bt);
			this.opcode = 0xaa;
			this.opcodeName = "bitxor";
		}
	}
}