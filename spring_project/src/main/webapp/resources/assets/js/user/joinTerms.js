$(document).ready(function(){
     $(".button").click(function(){    
         if($("input[name=req]").is(":checked") == false){
              alert("약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
              return;
         }else{
        	 location.href=contextPath+"/user/joinForm";
         }
     });    
});

