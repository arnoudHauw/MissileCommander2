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
		
		private var blocks : Array = [];
		private var totalBlocks : int = 5;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			_mouseLocation = new Vector2D(mouseX, mouseY);
			
			stage.addEventListener(Event.ENTER_FRAME, update);
			
			addEventListener(Event.ENTER_FRAME, update);
			addEventListener(MouseEvent.MOUSE_DOWN, removeObject);
			
		}
		
		private function update(e:Event):void
		{
			_mouseLocation.y = mouseY;
			_mouseLocation.x = mouseX;
			trace(_mouseLocation);
			
			var l : int = blocks.length;
			for (var l : int = 1
			
			
			
			
			
			; i < l ; i++ )
			{
				
			}
		}
		
		function getNewBlock()
		{
			var block : Block = new Block();
			addChild(block);
			block.y = Math.random() * stage.stageWidth;
			block.x = Math.random() * stage.stageHeight;
			blocks.push(block);
		}
		
		for (var i : int = 0 ; i < totalBlocks ; i++ )
		{
			getNewBlock();
		}
		
		function removeObject(e:MouseEvent)
		{
			var currentBlock : block = e.target as Block;
			var index : int = blocks.indexOf(currentBlock);
			blocks.splice(0 , 1);
		}
	}
	
}