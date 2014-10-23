package object 
{
	/**
	 * ...
	 * @author arnoud
	 */
	public class FactoryClass 
	{
		public static const ASSET_BULLET : String = "asset_bullet";
		public static const ASSET_TOWER  : String = "asset_tower";
		
		public static function createAsset ( type : String ) :  pObject
		{
			var pobject : pObject;
			
			if (type == ASSET_BULLET)
			{
				pobject = new BulletClass();
			}
			else if (type == ASSET_TOWER)
			{
				pobject = new TurretsClass();
			}
			else
			{
				throw new Error(" Invalid type specified in Factory Class.");
				return null;
			}
			
			return pobject;
		}
	
	}

}