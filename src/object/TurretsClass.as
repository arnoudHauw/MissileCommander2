package object
{
	import flash.display.Sprite;
	import flash.events.AccelerometerEvent;
	import object.pObject;
	import flash.events.MouseEvent;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author arnoud
	 */
	public class TurretsClass extends pObject
	{
		private var asset:Turret = new Turret(); 0.
		
		
		public function TurretsClass()
		{
			addChild(asset);
			addEventListener(Event.ENTER_FRAME, Loop);
		}
		
		private function Loop(e:Event):void
		{
			asset.rotation = Math.atan2(mouseY - asset.y, mouseX - asset.x) * 180 / Math.PI;
		}
	}

}