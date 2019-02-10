<link href="${vendorPath}/reveal/css/reveal.css"" rel="stylesheet" />
<link href="${vendorPath}/reveal/css/theme/white.css"" rel="stylesheet" />
<script src="${vendorPath}/reveal/js/reveal.js"></script>

<div class="container">
    <h1>TEST</h1>
    <div class="reveal" style="height: 500px;">
        <div class="slides">
            <section>Single Horizontal Slide</section>
            <section>
                <section>Vertical Slide 1</section>
                <section>Vertical Slide 2</section>
            </section>
        </div>
    </div>
</div>

<script>
Reveal.initialize({

    // ...

    // The "normal" size of the presentation, aspect ratio will be preserved
    // when the presentation is scaled to fit different resolutions. Can be
    // specified using percentage units.
    width: 960,
    height: 700,

    // Factor of the display size that should remain empty around the content
    margin: 0.1,

    // Bounds for smallest/largest possible scale to apply to content
    minScale: 0.2,
    maxScale: 1.5

});
</script>
