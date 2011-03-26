/**
* Class to represent the business data for a link in an character
*/
package com.tarafenton.common.model {

	public class ProjectLink {
		
		public var name:String;
		public var title:String;
		public var agency:String;
		public var client:String;
		
		public function ProjectLink(name:String, title:String,  agency:String, client:String) {
			this.name = name;
			this.title = title;
			this.agency = agency;
			this.client = client;
		}
	}
}