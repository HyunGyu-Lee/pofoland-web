$(function (){
    var slider = new MasterSlider();

    slider.control('arrows', {insertTo:'#masterslider'});
    slider.control('bullets');

    slider.setup('masterslider' , {
        width:1920,
        height:600,
        space:5,
        view:'basic',
        speed:20
    });
});