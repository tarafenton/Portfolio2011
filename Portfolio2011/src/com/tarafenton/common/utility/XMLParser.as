package com.tarafenton.common.utility {
	
	import com.tarafenton.common.model.Category;
	import com.tarafenton.common.model.Details;
	import com.tarafenton.common.model.Link;
	import com.tarafenton.common.model.ProjectLink;
	import com.tarafenton.common.model.URLLink;
	
	public class XMLParser {
		
		public static function parse(xmlConfig:XML):Link {

		try {
			
			var link:Link=new Link();
				
				var projectInt:int = xmlConfig.project.length();
				for (var i:int; i < projectInt; i++) {
				
					var projectLink:ProjectLink=new ProjectLink(
						xmlConfig.project[i].@["name"],
						xmlConfig.project[i].@["title"],
						xmlConfig.project[i].@["agency"],
						xmlConfig.project[i].@["client"]);
						
					// add the charLink to the link object -- the array in Link.as
					link.addProject(projectLink);
					
					var urlLink:URLLink=new URLLink(
						xmlConfig.project[i].url.@["link"],
						xmlConfig.project[i].url.@["text"],
						xmlConfig.project[i].url.@["img_url"]);
						
					// add the charLink to the link object -- the array in Link.as
					link.addURL(urlLink);
					
					var category:Category=new Category(
						xmlConfig.project[i].category.@["main"],
						xmlConfig.project[i].category.@["order"]);
						
					// add the charLink to the link object -- the array in Link.as
					link.addCategory(category);
					
					var details:Details=new Details(
						xmlConfig.project[i].details.@["role"],
						xmlConfig.project[i].details.@["year"],
						xmlConfig.project[i].details.text);
						
					// add the charLink to the link object -- the array in Link.as
					link.addDetails(details);
				}
				trace("finished");
		} catch (error:Error) {
			trace("there was an error loading the wiki data");
		}			
		return link; // return the populated issue object
		}
	}
}
