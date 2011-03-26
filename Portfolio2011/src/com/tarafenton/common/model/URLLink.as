/**
* Class to represent the business data for a link in an character
*/
package com.tarafenton.common.model {

	public class URLLink {
		
		public var link:String;
		public var text:String;
		public var img_url:String;
		
		public function URLLink(link:String, text:String,  img_url:String) {
			this.link = link;
			this.text = text;
			this.img_url = img_url;
		}
	}
}