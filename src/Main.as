package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.text.engine.TextBlock;
	import utils.Vector2D;
	
	/**
	 * ...
	 * @author arnoud
	 */
	public class Main extends Sprite 
	{
		private var _mouseLocation : Vector2D;
		
		private var turret : Turret = new Turret;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			_mouseLocation = new Vector2D;
			
			turret.y = 400;
			turret.x = 400;
			addChild(turret);
			
			stage.addEventListener(Event.ENTER_FRAME, update);
			
			addEventListener(Event.ENTER_FRAME, update);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, turretRotation);
			stage.addEventListener(MouseEvent.MOUSE_DOWN, shootBullet);
			
		}
		
		private function update(e:Event):void
		{
			_mouseLocation.y = mouseY;
			_mouseLocation.x = mouseX;
		}
		
		private function turretRotation(e:MouseEvent):void
		{
			
			_mouseLocation.y = mouseY;
			_mouseLocation.x = mouseX;
			turret.Rotation = _mouseLocation.angle * 180 / Math.PI;
			/*var rad:Number = Math.atan2(opp, adj);
			angle = rad * 180 / Math.PI;
			_texture.rotation = angle;*/
		}
		private function shootBullet(e:MouseEvent):void
		{
			var bullet:Bullet = new Bullet;
			bullet.direction(turret.turretRotation());
			bullet.rotation = turret._texture.rotation;
			stage.addChild(bullet);
			bullet.x = turret.x;
			bullet.y = turret.y;
			
		}
		/*private function Shoot(e:Event):void
		{
			someNum = Math.ceil(Math.random() * 3);
			
			
			var bubble:Bubble = new Bubble;
			bubble.direction(_player.playerRotation());
			bubble.rotation = Unit._texture.rotation;
			stage.addChild(bubble);
			bubbleArray.push(bubble);
			bubble.x = _player.x;
			bubble.y = _player.y;
			bubble.z = _player.z -100;
		}*/
	}
	
}