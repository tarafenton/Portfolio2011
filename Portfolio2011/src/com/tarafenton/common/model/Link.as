/**
* Object representing the business data for an links of a charactor
*/
package com.tarafenton.common.model
{
	public class Link
	{
		private var _projectArray:Array=[]; // all links for this charactor
		private var _urlArray:Array=[]; // all links for this charactor
		private var _catArray:Array=[]; // all links for this charactor
		private var _detailsArray:Array=[]; // all links for this charactor
		
		/**
		 * get an Array of all the links in an char link.
		 */
		public function get linkArray():Array
		{
			return _projectArray;
		}
		
		/**
		 * Adds a link to the array of links.  
		 */
		public function addProject(link:ProjectLink):void
		{
			_projectArray.push(link);
		}
		/**
		 * get an Array of all the links in an char link.
		 */
		public function get urlArray():Array
		{
			return _urlArray;
		}
		
		/**
		 * Adds a link to the array of links.  
		 */
		public function addURL(link:URLLink):void
		{
			_urlArray.push(link);
		}
		/**
		 * get an Array of all the links in an char link.
		 */
		public function get catArray():Array
		{
			return _catArray;
		}
		
		/**
		 * Adds a link to the array of links.  
		 */
		public function addCategory(link:Category):void
		{
			_catArray.push(link);
		}
		/**
		 * get an Array of all the links in an char link.
		 */
		public function get detailsArray():Array
		{
			return _detailsArray;
		}
		
		/**
		 * Adds a link to the array of links.  
		 */
		public function addDetails(link:Details):void
		{
			_detailsArray.push(link);
		}
	}
}