---
order: 8
---
{% assign photos = site.collections | where: "label", "photos" | first  %}
<div uk-slider="autoplay: true;autoplay-interval: 3000;index: 40;center: true">
    <div class="uk-position-relative uk-visible-toggle uk-margin-bottom uk-margin-bottom">
    <div class="uk-slider-container uk-light">
    <ul class="uk-slider-items uk-child-width-1-2@s uk-child-width-1-4@m uk-grid-small" uk-grid uk-lightbox="animation: fade">
        {% assign photos = site.collections | where: "label", "photos" | first  %}
        {% for photo in photos.files %}
        <li><a class="uk-inline" href="assets/photos/{{photo.name}}">
            <img data-src="assets/photos/{{photo.name}}" alt="" uk-img="target: !.uk-slider-items"/>
            </a>
        </li>
        {% endfor %}  
    </ul>
    </div>
    <div class="uk-hidden@s uk-light">
        <a class="uk-position-center-left uk-position-small" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
        <a class="uk-position-center-right uk-position-small" href="#" uk-slidenav-next uk-slider-item="next"></a>
    </div>
    <div class="uk-visible@s">
        <a class="uk-position-center-left-out uk-position-small" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
        <a class="uk-position-center-right-out uk-position-small" href="#" uk-slidenav-next uk-slider-item="next"></a>
    </div>
    </div>
</div>
