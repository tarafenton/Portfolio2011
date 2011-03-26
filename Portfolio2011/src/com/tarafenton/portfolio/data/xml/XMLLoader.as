package com.tarafenton.portfolio.data.xml {

	import com.tarafenton.portfolio.events.ModelEvent;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	
	public class XMLLoader  extends EventDispatcher {

		private var _url:String = "http://tarafenton.com/learnXML.php";
		private var _xmlLoader:URLLoader;
		private var _xmlURL:URLRequest;	
		private var _xml:XML; 
		
		public function XMLLoader () {
			init();
		}
		private function init():void {	
			_xmlURL=new URLRequest(_url);
			_xmlLoader=new URLLoader();
			_xmlLoader.addEventListener(Event.COMPLETE,completeHandler);
			//_xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,handleError);
			_xmlLoader.load(_xmlURL);
		}
		
		private function completeHandler(event:Event):void {
			try {
				_xml = new XML(event.target.data);
			} catch (error:Error) {
				trace ("Error for XML from response in XMLLoader: "+event.target.data);
			}
			dispatchEvent(new ModelEvent(ModelEvent.LOADED));
		}
		
		public function get xml():XML { return _xml; }
	}
}