package object
{
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author arnoud
	 */
	public class BulletClass extends pObject
	{
		public var pointer:Number;
		private var asset:Bullet = new Bullet();
		private var speed:Number = 10;
		private var movementx:Number;
		private var movementy:Number;
		private var bulletSpeed:Number = 2;
		
		public function BulletClass()
		{
			addEventListener(Event.ADDED_TO_STAGE, direction);
			addEventListener(Event.ENTER_FRAME, loop);
			addChild(asset);
		}
		
		public function direction(angle:Number):void
		{
			this.y -= bulletSpeed * Math.cos(pointer * Math.PI / 180);
			this.x += bulletSpeed * Math.sin(pointer * Math.PI / 180);
		}
		
		public function loop(e:Event):void
		{
			this.x += movementx;
			this.y += movementy;
		}
	}
}