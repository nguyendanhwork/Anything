var items = document.getElementsByClassName("item-display");
for (var i = 0; i < items.length; i++) {
    if (i == 0) {
        items[i].style.display = "block";
    } else {
        items[i].style.display = "none";
    }
}
$(document).ready(function() {
    $(".click-show").click(function() {
        var a = this.src;
        $(".item-display").each(function() {
            if (this.src == a) {
                $(this).css("display", "block");
            } else $(this).css("display", "none");
        });
    });
});
var index = 1;
slideShow(index);
slideAuto();
var x = document.getElementsByClassName("isSlide ");

function clickSlide(n) {
    slideShow(index += n);
}

function slideShow(n) {
    var i;
    var x = document.getElementsByClassName("isSlide ");
    if (n > x.length) {
        index = 1
    }
    if (n < 1) {
        index = x.length
        console.log(index)
    }
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none ";
    }
    x[index - 1].style.display = "block ";


}

function slideAuto() {
    setTimeout(function() {
        x[1].style.display = "block";
        x[0].style.display = "none ";
        x[2].style.display = "none ";
        x[3].style.display = "none ";
    }, 2500);
    setTimeout(function() {
        x[2].style.display = "block";
        x[1].style.display = "none ";
        x[0].style.display = "none ";
        x[3].style.display = "none ";
    }, 5000);
    setTimeout(function() {
        x[3].style.display = "block";
        x[0].style.display = "none ";
        x[1].style.display = "none ";
        x[2].style.display = "none ";
    }, 7500);
    setTimeout(function() {
        x[0].style.display = "block";
        x[1].style.display = "none ";
        x[2].style.display = "none ";
        x[3].style.display = "none ";
    }, 10000);
    setTimeout(slideAuto, 12500);
}