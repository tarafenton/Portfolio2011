package com.tarafenton.portfolio.events {
	
	import flash.events.Event;
	
	public class ModelEvent extends Event {
		
		public static const LOADED:String = "loaded";
		public static const ERROR:String = "error";
		
		public function ModelEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false) {
			super(type, bubbles, cancelable);
		}
	}
}