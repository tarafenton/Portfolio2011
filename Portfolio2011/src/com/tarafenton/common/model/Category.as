/**
* Class to represent the business data for a link in an character
*/
package com.tarafenton.common.model {

	public class Category {
		
		public var main:String;
		public var order:String;
		
		public function Category(main:String, order:String) {
			this.main = main;
			this.order = order;
		}
	}
}