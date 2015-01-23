package
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.engine.TextBlock;
	import object.BulletClass;
	import object.pObject;
	import object.BulletClass;
	import utils.Vector2D;
	import object.FactoryClass;
	import flash.geom.*;
	
	/**
	 * ...
	 * @author arnoud
	 */
	public class Main extends Sprite
	{
		private var turrets:Array = [];
		private var amountTurrets:uint = 3;
		private var MouseClick:Point;
		
		public function Main():void
		{
			if (stage)
				init();
			else
				addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			for (var i:uint; i < amountTurrets; i++)
			{
				var turret:pObject = FactoryClass.createAsset(FactoryClass.ASSET_TOWER);
				
				turrets.push(turret);
				addChild(turret);
				turrets[i].x = stage.stageWidth / (amountTurrets - 1) * i;
				turrets[i].y = stage.stageHeight - turrets[i].height / 5;
			}
			stage.addEventListener(MouseEvent.MOUSE_DOWN, shootBullet);
		
		}
		
		/*
		   if    MousePosition : X of Tower + MousePosition : Y of tower is lower than the max value of a number.
		   "Counter = The tower"
		   "ClosestTower:Number = Mouse Position : X of Tower + Moouse Position : Y of Tower.
		   Towers[Counter]{
		   Shoot()
		 }*/
		private function shootBullet(e:MouseEvent):void
		{
			/*var angle:Number = 2 * Math.PI * (90 / 360);
			   var translatePoint:Point = Point.polar(distance, angle);
			   var point1:Point = new Point(mouseX, mouseY);
			 var distance:Number = Point.distance(turrets[1], point1);*/
			var bullet:pObject = FactoryClass.createAsset(FactoryClass.ASSET_BULLET);
			
			
			/*bullet.pointer = (Math.atan2(mouseY - turrets[1].y, mouseX - turrets[1].x) * (180 / Math.PI)) + 90;
			turrets[1].rotation = pointer;*/
			
			//bullet.rotation = turrets[1].rotation;*/
			addChild(bullet);
		}
	
	}

}