'use strict';

angular.module("arseneAngularApp")
	.factory("SettingSvc", function(){
		//Your Website URL
		var url = 'http://www.hotspicyapps.com'; 
		function getRootUrl(){
			return url + '/P4Mth25rQyBGdCsYxn8_PE/api'; 
		}
		function getPhotoUrl(){
			return url + '/P4Mth25rQyBGdCsYxn8_PE/api/uploads/'; 
		}
		return {
		    getRootUrl : getRootUrl, 
		    getPhotoUrl : getPhotoUrl
		};
	}); 