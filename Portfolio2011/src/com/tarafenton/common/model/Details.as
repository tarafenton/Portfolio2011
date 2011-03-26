/**
* Class to represent the business data for a link in an character
*/
package com.tarafenton.common.model {

	public class Details {
		
		public var role:String;
		public var year:String;
		public var text:String;
		
		public function Details(role:String, year:String,  text:String) {
			this.role = role;
			this.year = year;
			this.text = text;
		}
	}
}