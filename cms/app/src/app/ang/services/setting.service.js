'use strict';

angular.module("app")
	.factory("SettingSvc", function(){
		//Your Website URL
		var url = 'http://phpstack-6499-15421-56916.cloudwaysapps.com'; 
		function getRootUrl(){
			return url + '/cms/api'; 
		}
		function getPhotoUrl(){
			return url + '/cms/api/uploads/'; 
		}
		return {
		    getRootUrl : getRootUrl, 
		    getPhotoUrl : getPhotoUrl
		};
	}); 