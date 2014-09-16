package  
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	/**
	 * ...
	 * @author arnoud
	 */
	public class Bullets extends Sprite
	{
		private var bullet:Bullet = new Bullet;
		private var speed:Number = 10;
		private var movementx:Number;
		private var movementy:Number;
		
		public function Bullets() 
		{
			
		}
		
		public function direction(angle:Number):void
		{
			var radion:Number = angle / (180 / Math.PI);
			movementx = Math.cos (radion) * speed;
			movementy = Math.sin (radion) * speed;
		}
		
		public function update():void
		{
			this.x += movementx;
			this.y += movementy;
		}
		
		
	}

}