$.noConflict();
jQuery(document).ready(function($){

    function hide_em(){ 
        $('.cell').each(function() {
            $(this).children().hide();
        });
    }

    hide_em();

    var selected = "";

    $('#game').on("click", '.cell' ,function() {
        $(this).children('i').show('10');
        
        if (selected == ""){
           selected = $(this).children().attr('class');
        }else{
            if (selected == $(this).children('i').attr('class')){
                setTimeout(function(){
                    hide_em();
                    selected = "";
                    alert("you got a match");
                }, 2000);                                    
            }else{
                setTimeout(function(){
                    hide_em();
                    selected = "";
                }, 2000);
            }
        } 
        console.log(selected);
        

    });


});
