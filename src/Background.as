package  
{
	
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	/**
	 * ...
	 * @author niels
	 */
	public class Background extends Sprite 
	{
		[Embed(source="../img/back2.png")]
		private var BackgroundImage:Class;
		private var speed:Number = -7;
		private var bgImage:Bitmap;
		
		public function Background() 
		{
			
			this.addEventListener(Event.ADDED_TO_STAGE, init);
			this.x = 0;
		}
		private function init(e:Event = null):void
		{
			bgImage = new BackgroundImage(); 
			addChild(bgImage);

			this.addEventListener(Event.ENTER_FRAME, loop)
		}
		private function loop(e:Event):void
		{
			this.x += speed;
			if (this.x < -960)
			{
				this.x = 0;
			}
		}

	}
		
}