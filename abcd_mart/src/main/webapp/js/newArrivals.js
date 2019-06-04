
$(function(){
	setElapseTimeSpecialPrice();
    setInterval(function() {
        setElapseTimeSpecialPrice();
    }, 1000);
});

/*
b.onClickNext=function(e){
	e.preventDefault(),(!b.isEnd||b.params.loop)&&b.slideNext()
},
b.onClickPrev=function(e){
	e.preventDefault(),(!b.isBeginning||b.params.loop)&&b.slidePrev()
},
*/

function setElapseTimeSpecialPrice() {
    var time_diff = $("#timeDiff").val();
    
    if (time_diff >= 0) {
        // TAKE THE SECONDS ELAPSED
        var secs = time_diff;
        
        // CONVERT SECONDS TO MINUTES AND SECONDS
        var mins = Math.floor(secs / 60);
        secs -= mins * 60;
        
        // CONVERT MINUTES TO HOURS AND MINUTES
        var hour = Math.floor(mins / 60);
        mins -= hour * 60;
        
        // CONVERT HOURS TO DAYS AND HOURS
        var day = Math.floor(hour / 24);
        hour -= day * 24;
        
        // DISPLAY THE FINAL OUTPUT TIME STRING
        var tempHtml = "";
        if(day == 0){
            tempHtml = pad(hour) + ":" + pad(mins) + ":" + pad(secs);
        }else{
            tempHtml = "<strong>"+day+"일</strong> "+pad(hour) + ":" + pad(mins) + ":" + pad(secs);
        }
        $('.time').html(tempHtml);
        
        $("#timeDiff").val(time_diff - 1);
    } else {
        // DISPLAY THE FINAL OUTPUT TIME STRING
        $('.time').html("<strong>0일</strong> 00:00:00");
    }
}
function pad(num) {
    return ((num > 9) ? num : "0" + num);
}
