---
menu: Resultate
order: 3
key: res-modal
toggle: true
navbar: true
---

<div id="res-modal" class="uk-modal-container"  
    uk-modal>
    <div class="uk-modal-dialog">
    <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Zwischenstand</h2>
        <button class="uk-modal-close-full" type="button" uk-close></button>

{% raw %}
    <div class="uk-padding-small  uk-padding-remove-vertical ">
        <div class="webData">
        <ul class="uk-child-width-1-1 uk-child-width-1-3@s uk-grid-small" uk-grid>
        <li>
        <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
        Sponsorgeld: {{meta.totalchf}} CHF
        </div>
        </li>
        <li>
        <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
        Gelaufen: {{meta.completed}} von {{meta.parts}}<br/>
        </div>
        </li>
        <li>
        <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
        Distanz: {{meta.totalkm}} km
        </div>
        </li>
        </ul>
    </div>

   <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">On the Road</h2>
    <div class="webResults">
    <ul class="uk-child-width-1-1 uk-child-width-1-3@s
    uk-child-width-1-4@m uk-child-width-1-5@l uk-grid-small" uk-grid="masonry: true">
 {{#each results}}
 {{#if active}}
    <li>
    <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
    {{name}}<br/>
    {{start}}<br/>
    {{speed}}<br/>
    {{dist}} km<br/>
    {{chf}} CHF<br/>
    {{transport}}<br/>
    </div>
    </li>
 {{/if}}
 {{/each}}
     </ul>
    </div>


 <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Resultate</h2>
 <div id="res-filter" uk-filter="delay: 2000;target: .res-filter">
    <ul class="uk-padding-small uk-padding-remove-vertical uk-subnav uk-subnav-pill">
        <li>
            <a href="#">Kategorie</a>
            <div class="webData" id="res-filter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                {{#each transport}}
                    {{#if inuse }}
                    <li uk-filter-control="filter: [data-transport='{{name}}'];sort: data-dist;order: desc;">
                        <a href="#">{{name}}</a>
                    </li>
                    {{/if}}
                {{/each}}
                </ul>
            </div>
        </li>
        <li uk-filter-control="filter: [data-all='x'];sort: data-chf;order: desc;" class="uk-active"><a  uk-icon="thumbnails" href="#"></a></li>
    </ul>
    <div class="webResults uk-padding-small  uk-padding-remove-vertical ">
    <ul class="res-filter uk-child-width-1-1 uk-child-width-1-3@s
    uk-child-width-1-4@m uk-child-width-1-5@l uk-grid-small" uk-grid="masonry: true">
    {{#each results}}
        <li data-transport="{{transport}}"
            data-all="x"
            data-dist="{{dist}}"
            data-chf="{{chf}}">
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
                <div class="uk-text-truncate uk-text-bold name">{{name}}</div>
                <div class="uk-text-small uk-text-light">{{transport}}</div>
                <div class="result">{{chf}} CHF / {{dist}} km</div>
                <div class="start">Start {{start}}</div>
                {{#if grop}}
                <div class="uk-text-small uk-text-light">{{grop}}</div>
                {{/if}}
                <div class="sponsor">
                    <a class="uk-icon-button" uk-tooltip="Sponsoring Zusage" uk-icon="heart" target="_sponsor" href="{{link}}"></a>
                </div>
            </div>
        </li>
    {{/each}}
    </ul>
    </div>
{% endraw %}


<div class="uk-padding-small uk-text-small uk-text-muted">Es werden nur Teilnehmende angezeigt, die in ihrer Anmeldung der Publikation zugestimmt haben.</div>
    </div>
</div>

<script>
document.addEventListener("DOMContentLoaded", event => {
   UIkit.util.on('#res-filter','beforeFilter',() => {
       UIkit.dropdown('#res-filter-dropdown').hide(false);
   });
   UIkit.modal('#res-modal').show();
});
</script>
