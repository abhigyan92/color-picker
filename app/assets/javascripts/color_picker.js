$('#color').minicolors();
function createGrid(x) {
    for (var rows = 0; rows < x; rows++) {
        for (var columns = 0; columns < x; columns++) {
        	boxId = "box" + rows + columns;
            $("#grid-container").append("<div class='grid' id = boxId></div>");
        };
    };
    $(".grid").width(480/x);
    $(".grid").height(480/x);
};
createGrid(20);