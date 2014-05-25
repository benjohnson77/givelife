$.noConflict();
jQuery(document).ready(function($){
    var board = $("#form input[name=board]").val();
    board = $.parseJSON(board);
    var this_button = "";
    var this_row = "";
    var button_class = "btn btn-default";

    $.each(board, function (y, row) {
        $.each(row, function (x, state) {
            state = 1 ? btn = "btn btn-success" : btn = "btn btn-default";
            state = 0 ? btn = "btn btn-default" : btn = "btn btn-success";
            $(this).removeClass().addClass(btn);
        });
    });

    $('#game').on("click", ".btn", function() {
        var board = $("#form input[name=board]").val();

        //alert(board); 
        board = JSON.parse(board);

        //alert($(this).attr("id"));

        var cords = $(this).attr('id').split('~');
        var y = cords[0];
        var x = cords[1];
        var state = board[y][x];

        //switch
        state = 1 - state;

        board[y][x] = state;
        state == 1 ? btn = "btn btn-success" : btn = "btn btn-default";
        state == 0 ? btn = "btn btn-default" : btn = "btn btn-success";
        $(this).removeClass().addClass(btn);
        $("#form input[name=board]").val(JSON.stringify(board));


    });


});
