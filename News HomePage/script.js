window.onload = function () {
    window.addEventListener('scroll',function(e) {
        if(window.pageXOffset >100){
            document.querySelector("nav").classList.add('is-scrolling');
        }else{
            document.querySelector("nav").classList.remove('is-scrolling');
        }
    });
    const menu_btn=document.querySelector('.hamburger');

    menu_btn.addEventListener('click', function(){
    menu_btn.classList.toggle('is-active')
    });
}