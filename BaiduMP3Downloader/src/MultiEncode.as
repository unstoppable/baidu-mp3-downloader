package 
{
	import flash.utils.ByteArray;
	public class MultiEncode
	{
		// this is an encode class by http://www.nosword.com   
		public function MultiEncode():void
		{
		}
		
		public static function GB2312ToUTF8(str:String):String{
			var BA:ByteArray = new ByteArray();
			BA.writeMultiByte(str,"GB2312");
			BA.position = 0;
			return BA.readMultiByte(BA.length,"utf8");
		}
		
		public static function urlencodeBIG5(str:String):String{
			var result:String ="";
			var byte:ByteArray =new ByteArray();
			byte.writeMultiByte(str,"big5");
			for(var i:int;i<byte.length;i++){
				result += escape(String.fromCharCode(byte[i]));
			}
			return result;
		}
		
		public static function urlencodeGBK(str:String):String{
			var result:String ="";
			var byte:ByteArray =new ByteArray();
			byte.writeMultiByte(str,"gbk");
			for(var i:int;i<byte.length;i++){
				result += escape(String.fromCharCode(byte[i]));
			}
			//   trace(result);
			return result;
		}
		
	}
}