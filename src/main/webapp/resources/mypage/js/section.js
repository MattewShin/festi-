$(function () {
    $(".innnerAnchor").on("click", function(){
        var headerHeight = $("header").outerHeight();
        var href = $(this).attr("href");
        var target = $(href == "#" || href == "" ? "body" : href);
        var position = target.offset().top - headerHeight;
        $("html, body").animate({ scrollTop: position }, 600, "swing");
    });
});
