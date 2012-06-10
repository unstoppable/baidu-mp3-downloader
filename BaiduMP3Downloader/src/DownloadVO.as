package
{
	[Bindable]
	public class DownloadVO
	{
		public var name:String="";
		public var url:String="";
		public var real:String="";
		public var nativePath:String="";
		public var stutas:String="pending";
		public var data:XML;
		public var loadPercent:int=0;
		public function DownloadVO(name:String, url:String, data:XML)
		{
			this.name=name.replace(/[\\\/:\*\?"<>\|]+/g,"_");
			this.url=url;
			this.data=data;
		}
	}
}