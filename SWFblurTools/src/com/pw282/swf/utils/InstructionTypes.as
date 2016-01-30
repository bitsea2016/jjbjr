package com.pw282.swf.utils
{
	import com.pw282.swf.data.BaseInstruction;
	import com.pw282.swf.instructions.O_add;
	import com.pw282.swf.instructions.O_add_i;
	import com.pw282.swf.instructions.O_astype;
	import com.pw282.swf.instructions.O_astypelate;
	import com.pw282.swf.instructions.O_bitand;
	import com.pw282.swf.instructions.O_bitnot;
	import com.pw282.swf.instructions.O_bitor;
	import com.pw282.swf.instructions.O_bitxor;
	import com.pw282.swf.instructions.O_call;
	import com.pw282.swf.instructions.O_callmethod;
	import com.pw282.swf.instructions.O_callproperty;
	import com.pw282.swf.instructions.O_callproplex;
	import com.pw282.swf.instructions.O_callpropvoid;
	import com.pw282.swf.instructions.O_callstatic;
	import com.pw282.swf.instructions.O_callsuper;
	import com.pw282.swf.instructions.O_callsupervoid;
	import com.pw282.swf.instructions.O_checkfilter;
	import com.pw282.swf.instructions.O_coerce;
	import com.pw282.swf.instructions.O_coerce_a;
	import com.pw282.swf.instructions.O_coerce_s;
	import com.pw282.swf.instructions.O_construct;
	import com.pw282.swf.instructions.O_constructprop;
	import com.pw282.swf.instructions.O_constructsuper;
	import com.pw282.swf.instructions.O_convert_b;
	import com.pw282.swf.instructions.O_convert_d;
	import com.pw282.swf.instructions.O_convert_i;
	import com.pw282.swf.instructions.O_convert_o;
	import com.pw282.swf.instructions.O_convert_s;
	import com.pw282.swf.instructions.O_convert_u;
	import com.pw282.swf.instructions.O_debug;
	import com.pw282.swf.instructions.O_debugfile;
	import com.pw282.swf.instructions.O_debugline;
	import com.pw282.swf.instructions.O_declocal;
	import com.pw282.swf.instructions.O_declocal_i;
	import com.pw282.swf.instructions.O_decrement;
	import com.pw282.swf.instructions.O_decrement_i;
	import com.pw282.swf.instructions.O_deleteproperty;
	import com.pw282.swf.instructions.O_divide;
	import com.pw282.swf.instructions.O_dup;
	import com.pw282.swf.instructions.O_dxns;
	import com.pw282.swf.instructions.O_dxnslate;
	import com.pw282.swf.instructions.O_equals;
	import com.pw282.swf.instructions.O_esc_xattr;
	import com.pw282.swf.instructions.O_esc_xelem;
	import com.pw282.swf.instructions.O_findproperty;
	import com.pw282.swf.instructions.O_findpropstrict;
	import com.pw282.swf.instructions.O_getdescendants;
	import com.pw282.swf.instructions.O_getglobalscope;
	import com.pw282.swf.instructions.O_getglobalslot;
	import com.pw282.swf.instructions.O_getlex;
	import com.pw282.swf.instructions.O_getlocal;
	import com.pw282.swf.instructions.O_getlocal_n;
	import com.pw282.swf.instructions.O_getproperty;
	import com.pw282.swf.instructions.O_getscopeobject;
	import com.pw282.swf.instructions.O_getslot;
	import com.pw282.swf.instructions.O_getsuper;
	import com.pw282.swf.instructions.O_greaterequals;
	import com.pw282.swf.instructions.O_greaterthan;
	import com.pw282.swf.instructions.O_hasnext;
	import com.pw282.swf.instructions.O_hasnext2;
	import com.pw282.swf.instructions.O_ifeq;
	import com.pw282.swf.instructions.O_iffalse;
	import com.pw282.swf.instructions.O_ifge;
	import com.pw282.swf.instructions.O_ifgt;
	import com.pw282.swf.instructions.O_ifle;
	import com.pw282.swf.instructions.O_iflt;
	import com.pw282.swf.instructions.O_ifne;
	import com.pw282.swf.instructions.O_ifnge;
	import com.pw282.swf.instructions.O_ifngt;
	import com.pw282.swf.instructions.O_ifnle;
	import com.pw282.swf.instructions.O_ifnlt;
	import com.pw282.swf.instructions.O_ifstricteq;
	import com.pw282.swf.instructions.O_ifstrictne;
	import com.pw282.swf.instructions.O_iftrue;
	import com.pw282.swf.instructions.O_in;
	import com.pw282.swf.instructions.O_inclocal;
	import com.pw282.swf.instructions.O_inclocal_i;
	import com.pw282.swf.instructions.O_increment;
	import com.pw282.swf.instructions.O_increment_i;
	import com.pw282.swf.instructions.O_initproperty;
	import com.pw282.swf.instructions.O_instanceof;
	import com.pw282.swf.instructions.O_istype;
	import com.pw282.swf.instructions.O_istypelate;
	import com.pw282.swf.instructions.O_jump;
	import com.pw282.swf.instructions.O_kill;
	import com.pw282.swf.instructions.O_label;
	import com.pw282.swf.instructions.O_lessequals;
	import com.pw282.swf.instructions.O_lessthan;
	import com.pw282.swf.instructions.O_lookupswitch;
	import com.pw282.swf.instructions.O_lshift;
	import com.pw282.swf.instructions.O_modulo;
	import com.pw282.swf.instructions.O_multiply;
	import com.pw282.swf.instructions.O_multiply_i;
	import com.pw282.swf.instructions.O_negate;
	import com.pw282.swf.instructions.O_negate_i;
	import com.pw282.swf.instructions.O_newactivation;
	import com.pw282.swf.instructions.O_newarray;
	import com.pw282.swf.instructions.O_newcatch;
	import com.pw282.swf.instructions.O_newclass;
	import com.pw282.swf.instructions.O_newfunction;
	import com.pw282.swf.instructions.O_newobject;
	import com.pw282.swf.instructions.O_nextname;
	import com.pw282.swf.instructions.O_nextvalue;
	import com.pw282.swf.instructions.O_nop;
	import com.pw282.swf.instructions.O_not;
	import com.pw282.swf.instructions.O_pop;
	import com.pw282.swf.instructions.O_popscope;
	import com.pw282.swf.instructions.O_pushbyte;
	import com.pw282.swf.instructions.O_pushdouble;
	import com.pw282.swf.instructions.O_pushfalse;
	import com.pw282.swf.instructions.O_pushint;
	import com.pw282.swf.instructions.O_pushnamespace;
	import com.pw282.swf.instructions.O_pushnan;
	import com.pw282.swf.instructions.O_pushnull;
	import com.pw282.swf.instructions.O_pushscope;
	import com.pw282.swf.instructions.O_pushshort;
	import com.pw282.swf.instructions.O_pushstring;
	import com.pw282.swf.instructions.O_pushtrue;
	import com.pw282.swf.instructions.O_pushuint;
	import com.pw282.swf.instructions.O_pushundefined;
	import com.pw282.swf.instructions.O_pushwith;
	import com.pw282.swf.instructions.O_returnvalue;
	import com.pw282.swf.instructions.O_returnvoid;
	import com.pw282.swf.instructions.O_rshift;
	import com.pw282.swf.instructions.O_setglobalslot;
	import com.pw282.swf.instructions.O_setlocal;
	import com.pw282.swf.instructions.O_setlocal_n;
	import com.pw282.swf.instructions.O_setproperty;
	import com.pw282.swf.instructions.O_setslot;
	import com.pw282.swf.instructions.O_setsuper;
	import com.pw282.swf.instructions.O_strictequals;
	import com.pw282.swf.instructions.O_subtract;
	import com.pw282.swf.instructions.O_subtract_i;
	import com.pw282.swf.instructions.O_swap;
	import com.pw282.swf.instructions.O_throw;
	import com.pw282.swf.instructions.O_typeof;
	import com.pw282.swf.instructions.O_urshift;
	
	/**
	 * 
	 * @author pw
	 * @Date：2011-7-22
	 */	
	public class InstructionTypes
	{
		public function InstructionTypes()
		{
		}
		
		public static function getInstructionClass(opcode:int):Class
		{
			switch(opcode){
				case 0xa0:
					return O_add;
				case 0xc5:
					return O_add_i;
				case 0x86:
					return O_astype;
				case 0x87:
					return O_astypelate;
				case 0xa8:
					return O_bitand;
				case 0x97:
					return O_bitnot;
				case 0xa9:
					return O_bitor;
				case 0xaa:
					return O_bitxor;
				case 0x41:
					return O_call;
				case 0x43:
					return O_callmethod;
				case 0x46:
					return O_callproperty;
				case 0x4c:
					return O_callproplex;
				case 0x4f:
					return O_callpropvoid;
				case 0x44:
					return O_callstatic;
				case 0x45:
					return O_callsuper;
				case 0x4e:
					return O_callsupervoid;
				case 0x78:
					return O_checkfilter;
				case 0x80:
					return O_coerce;
				case 0x82:
					return O_coerce_a;
				case 0x85:
					return O_coerce_s;
				case 0x42:
					return O_construct;
				case 0x4a:
					return O_constructprop;
				case 0x49:
					return O_constructsuper;
				case 0x76:
					return O_convert_b;
				case 0x73:
					return O_convert_i;
				case 0x75:
					return O_convert_d;
				case 0x77:
					return O_convert_o;
				case 0x74:
					return O_convert_u;
				case 0x70:
					return O_convert_s;
				case 0xef:
					return O_debug;
				case 0xf1:
					return O_debugfile;
				case 0xf0:
					return O_debugline;
				case 0x94:
					return O_declocal;
				case 0xc3:
					return O_declocal_i;
				case 0x93:
					return O_decrement;
				case 0xc1:
					return O_decrement_i;
				case 0x6a:
					return O_deleteproperty;
				case 0xa3:
					return O_divide;
				case 0x2a:
					return O_dup;
				case 0x06:
					return O_dxns;
				case 0x07:
					return O_dxnslate;
				case 0xab:
					return O_equals;
				case 0x72:
					return O_esc_xattr;
				case 0x71:
					return O_esc_xelem;
				case 0x5e:
					return O_findproperty;
				case 0x5d:
					return O_findpropstrict;
				case 0x59:
					return O_getdescendants;
				case 0x64:
					return O_getglobalscope;
				case 0x6e:
					return O_getglobalslot;
				case 0x60:
					return O_getlex;
				case 0x62:
					return O_getlocal;
				case 0xd0:
				case 0xd1:
				case 0xd2:
				case 0xd3:
					return O_getlocal_n;
				case 0x66:
					return O_getproperty;
				case 0x65:
					return O_getscopeobject;
				case 0x6c:
					return O_getslot;
				case 0x04:
					return O_getsuper;
				case 0xaf:
					return O_greaterequals;
				case 0xaf:
					return O_greaterthan;
				case 0x1f:
					return O_hasnext;
				case 0x32:
					return O_hasnext2;
				case 0x13:
					return O_ifeq;
				case 0x12:
					return O_iffalse;
				case 0x18:
					return O_ifge;
				case 0x17:
					return O_ifgt;
				case 0x16:
					return O_ifle;
				case 0x15:
					return O_iflt;
				case 0x0f:
					return O_ifnge;
				case 0x0e:
					return O_ifngt;
				case 0x0d:
					return O_ifnle;
				case 0x0c:
					return O_ifnlt;
				case 0x14:
					return O_ifne;
				case 0x19:
					return O_ifstricteq;
				case 0x1a:
					return O_ifstrictne;
				case 0x11:
					return O_iftrue;
				case 0xb4:
					return O_in;
				case 0x92:
					return O_inclocal;
				case 0xc2:
					return O_inclocal_i;
				case 0x91:
					return O_increment;
				case 0xc0:
					return O_increment_i;
				case 0x68:
					return O_initproperty;
				case 0xb1:
					return O_instanceof;
				case 0xb2:
					return O_istype;
				case 0xb3:
					return O_istypelate;
				case 0x10:
					return O_jump;
				case 0x08:
					return O_kill;
				case 0x09:
					return O_label;
				case 0xae:
					return O_lessequals;
				case 0xad:
					return O_lessthan;
				case 0x1b:
					return O_lookupswitch;
				case 0xa5:
					return O_lshift;
				case 0xa4:
					return O_modulo;
				case 0xa2:
					return O_multiply;
				case 0xc7:
					return O_multiply_i;
				case 0x90:
					return O_negate;
				case 0xc4:
					return O_negate_i;
				case 0x57:
					return O_newactivation;
				case 0x56:
					return O_newarray;
				case 0x5a:
					return O_newcatch;
				case 0x58:
					return O_newclass;
				case 0x40:
					return O_newfunction;
				case 0x55:
					return O_newobject;
				case 0x1e:
					return O_nextname;
				case 0x23:
					return O_nextvalue;
				case 0x02:
					return O_nop;
				case 0x96:
					return O_not;
				case 0x29:
					return O_pop;
				case 0x1d:
					return O_popscope;
				case 0x24:
					return O_pushbyte;
				case 0x2f:
					return O_pushdouble;
				case 0x27:
					return O_pushfalse;
				case 0x2d:
					return O_pushint;
				case 0x31:
					return O_pushnamespace;
				case 0x28:
					return O_pushnan;
				case 0x20:
					return O_pushnull;
				case 0x30:
					return O_pushscope;
				case 0x25:
					return O_pushshort;
				case 0x2c:
					return O_pushstring;
				case 0x26:
					return O_pushtrue;
				case 0x2e:
					return O_pushuint;
				case 0x21:
					return O_pushundefined;
				case 0x1c:
					return O_pushwith;
				case 0x48:
					return O_returnvalue;
				case 0x47:
					return O_returnvoid;
				case 0xa6:
					return O_rshift;
				case 0x63:
					return O_setlocal;
				case 0xd4:
				case 0xd5:
				case 0xd6:
				case 0xd7:
					return O_setlocal_n;
				case 0x6f:
					return O_setglobalslot;
				case 0x61:
					return O_setproperty;
				case 0x6d:
					return O_setslot;
				case 0x05:
					return O_setsuper;
				case 0xac:
					return O_strictequals;
				case 0xa1:
					return O_subtract;
				case 0xc6:
					return O_subtract_i;
				case 0x2b:
					return O_swap;
				case 0x03:
					return O_throw;
				case 0x95:
					return O_typeof;
				case 0xa7:
					return O_urshift;
				default:
//					trace("getInstructionClass no case:0x" + opcode.toString(16));
					return BaseInstruction;
					throw new Error("getInstructionClass no case:0x" + opcode.toString(16));
			}
			return BaseInstruction;
		}
	}
}