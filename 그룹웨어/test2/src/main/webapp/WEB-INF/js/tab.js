
     $(function(){
        $("#open").click(function(){
            $("#open").addClass("active");
            $("#close").removeClass("active");
        });
        $("#close").click(function(){
            $("#open").removeClass("active");
            $("#close").addClass("active");
});
     });