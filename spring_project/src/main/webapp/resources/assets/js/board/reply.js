/**
 * reply modules
 */
console.log("===========Reply Module==========")
var replyService = (function(){
	//댓글 추가
	function add(reply,callback,error){
		console.log("add reply_");
		
		$.ajax({
			type :"post",
			url : "/replies/create",
			//key값에 ""를 붙여줌. value값에 대해서는 date타입만 ""로 감싸준다.
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(callback){
					callback(result);
				}
			}
		});
	}
	//댓글 목록
	function getList(param, callback, error){
		var bno=param.bno;
		//var v = a || b  : a가 있으면 a, a가 없으면 b
		var page=param.page || 1;
		
		$.getJSON("/replies/pages/"+bno+"/"+page+".json",function(data){
			if(callback){
				console.log(data);
				callback(data.replyCnt, data.list);
			}
		}).fail(function(xhr,status,err){
			if(error){
				error(err);
			}
		});
	}
	//댓글 삭제
	function deleteReply(rno,callback,error){
		console.log("delete reply_");
		
		$.ajax({
			type : "delete",
			url : "/replies/"+rno,
			success : function(result){
				if(callback){
					callback(result);
				}
			}
		});
	}
	//댓글 수정
	function modify(reply, callback,error){
		console.log("modify reply_");
		
		$.ajax({
			type :"put",
			url : "/replies/"+reply.rno,
			data : JSON.stringify(reply),
			contentType : "application/json; charset=utf-8",
			success : function(result){
				if(callback){
					callback(result);
				}
			}
		});
	}
	//댓글 조회(1개)($.get(), $.post() : 데이터를 빠르고 간단하게 받을 수 있다)
	function get(rno, callback, error){
		$.get("/replies/"+rno+".json", function(result){
			if(callback){
				callback(result);
			}
		}).fail(function(xhr,err){
			if(error){
				error(err);
			}
		})
	}
	//댓글 시간 표시
	function displayTime(timeValue){
		var today = new Date();
		var dateObj=new Date(timeValue);
		var gap=today.getTime()-dateObj.getTime();
		//			d	h	m		s	
		if(gap < (24 * 60 * 60 * 1000)){
			var hh=dateObj.getHours();
			var mi=dateObj.getMinutes();
			var ss=dateObj.getSeconds();
			
			return [(hh > 9 ? '':'0')+hh,(mi > 9 ? '':'0')+mi,(ss > 9 ? '':'0')+ss].join(" : ");
			
		}else{
			var yy=dateObj.getFullYear();
			var mm=dateObj.getMonth()+1;
			var dd=dateObj.getDate();
			
			return [yy,(mm > 9 ? '':'0')+mm,(dd > 9 ? '':'0')+dd].join(" - ");
		}
		
	}	
	
	
	return {add : add, getList : getList, deleteReply : deleteReply, modify : modify, get:get, displayTime : displayTime}
	})();
	
	