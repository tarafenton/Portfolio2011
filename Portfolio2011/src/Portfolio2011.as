package {
	import com.tarafenton.common.model.Link;
	import com.tarafenton.common.utility.XMLParser;
	import com.tarafenton.portfolio.data.xml.XMLLoader;
	import com.tarafenton.portfolio.events.ModelEvent;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageDisplayState;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.system.Security;

	public class Portfolio2011 extends Sprite {
		private static var instance:Portfolio2011;
		private var _xmlLoader:XMLLoader;
		//private var _xmlParser:XMLP
		private var link:Link;
		public function Portfolio2011() {
			instance = this;
			instance.addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(evt:Event):void {
			Security.allowDomain('*');
			
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.displayState = StageDisplayState.NORMAL;
			stage.align = StageAlign.TOP_LEFT;
			
			_xmlLoader = new XMLLoader();
			_xmlLoader.addEventListener(ModelEvent.LOADED, loadComplete);
		}
		private function loadComplete(event:ModelEvent):void {
			_xmlLoader.removeEventListener(ModelEvent.LOADED, loadComplete);
			//trace(_xmlLoader.xml);
			// parse character links xml	
			link = XMLParser.parse(_xmlLoader.xml);
			trace(link);
		}
	}
}
