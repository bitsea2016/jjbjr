package  
{

	import flash.net.ObjectEncoding;
	import flash.net.SharedObject;

	/**
	 * 本地缓存管理
	 * @author yangyang
	 *
	 */
	public class LocalShareManager
	{
		private var lso : SharedObject;

		public static var instance : LocalShareManager;

		public static function getInstance() : LocalShareManager
		{
			if(instance == null)
			{
				instance = new LocalShareManager();
			}
			return instance;
		}

		public function LocalShareManager()
		{
			lso = SharedObject.getLocal("chui_swfblur");
			lso.objectEncoding = ObjectEncoding.AMF3;
		}

		public function get(property : String) : *
		{
			return lso.data[property];
		}

		public function save(property : String, data : *) : Boolean
		{
			try
			{
				lso.setProperty(property, data);
				flush();
			}
			catch(e : Error)
			{
			}
			return true;
		}

		public function clear(property : String) : Boolean
		{
			try
			{
				lso.data[property] = null;
				delete lso.data[property];
				flush();
			}
			catch(e : Error)
			{
			}
			return true;
		}

		public function flush() : void
		{
			try
			{
				lso.flush(0);
			}
			catch(e : Error)
			{
			}
		}

		public function clearAll() : void
		{
			lso.clear();
		}
	}
}