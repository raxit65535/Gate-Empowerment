var ADMIN = 'admin';
var GENERAL = 'general';
var download=function(key){
	window.location.replace('/serve?blob-key='+key+'&action=download');
}

var deleteFile=function(key){
	window.location.replace('/serve?blob-key='+key+'&action=delete');
}

var getUploads=function(role){
	var showData=function(resp){
		var data='';
		if(resp){
			//getting the data from the response object
			data=resp.data;
		}
		//creating the html content
		var htm='';
		if(data.length > 0){
			for (var i=0;i<data.length;i++){
				//creating a row
				htm+='<tr>';
				htm+='<td><a href="#" onclick=\'download("'+data[i].blobKey+'")\'">'+data[i].blobName+'</a></td>';
				if(role==ADMIN){
					htm+='<td><a href="#" onclick=\'deleteFile("'+data[i].blobKey+'")\'">Delete</a></td>';
				}
			}
		}
		else{
			//condition to show message when data is not available
			var thElesLength=$('#list-uploads table thead th').length;
			htm+='<tr><td colspan="'+thElesLength+'">No items found</td></tr>';
		}
		$('#uploads-list-tbody').html(htm);
	}
	$.ajax({
		url : "/upload",
		type : "GET",
		success : function(resp){
			showData(resp);
		}
	});
}