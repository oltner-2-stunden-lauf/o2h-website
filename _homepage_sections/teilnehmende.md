---
menu: Teilnehmer:innen
order: 6
key: tn-modal
toggle: true
navbar: false
---

<div id="tn-modal" class="uk-modal-container" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
    <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Teilnehmer:innen</h2>
        <button class="uk-modal-close-full" type="button" uk-close></button>
<div class="webData" id="tn-filter" uk-filter="delay: 2000;target: .js-filter">
{% raw %}
    <ul class="uk-padding-small uk-padding-remove-vertical uk-subnav uk-subnav-pill" uk-margin>
        <li>
            <a href="#">Filter</a>
            <div id="tn-filter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                    <li class="uk-nav-header">Gruppe</li>
                {{#each grop}}
                {{#if pub_part}}
                    <li uk-filter-control="filter: [data-group='{{name}}'];group: group;">
                        <a href="#">{{name}}</a>
                    </li>
                {{/if}}
                {{/each}}
                    <li class="uk-nav-header">Kategorie</li>
                {{#each transport}}
                    {{#if inuse }}
                    <li uk-filter-control="filter: [data-transport='{{id}}'];group: transport;">
                        <a href="#">{{desc}}</a>
                    </li>
                    {{/if}}
                {{/each}}
                </ul>
            </div>
        </li>
        <li>
            <a href="#">Sort</a>
            <div id="tn-sorter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                    <li uk-filter-control="sort: data-given;group: sort;">
                        <a href="#">Vorname</a></li>
                    <li uk-filter-control="sort: data-family;group: sort;">
                        <a href="#">Nachname</a></li>
                    <li uk-filter-control="sort: data-fix; order: desc;group: sort;">
                        <a href="#">Sponsorzusagen Fix</a></li>
                    <li uk-filter-control="sort: data-pkm; order: desc;group: sort;">
                        <a href="#">Sponsorzusagen pro Km</a></li>
                </ul>
            </div>
        </li>
        <li uk-filter-control="" class="uk-active"><a  uk-icon="thumbnails" href="#"></a></li>
        <!-- <li><input id="part-search" class="uk-search-input" type="search" uk-filter-control="" placeholder="Suchen ..."></li> -->
    </ul> 
    <div uk-overflow-auto class="uk-padding-small">
    <ul class="js-filter uk-child-width-1-1 uk-child-width-1-3@s
    uk-child-width-1-4@m uk-child-width-1-5@l uk-grid-small" uk-grid="masonry: true">
    {{#each part}}
        <li data-group="{{grop}}" 
            data-fix="{{fix}}" data-hasfix="{{#if fix}}y{{/if}}"
            data-pkm="{{pkm}}" data-haspkm="{{#if pkm}}y{{/if}}"
            data-given="{{given}}" 
            data-family="{{family}}"
            data-name="{{given}} {{family}}"
            data-transport="{{transport_id}}">
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
                <div class="uk-text-truncate uk-text-bold name">{{given}} {{family}}</div>
                <div class="spon">
                {{#if fix}}<span class="fix">{{fix}} CHF</span>
                {{#if pkm}}<span class="plus">&amp;</span>{{/if}}{{/if}}
                {{#if pkm}}<span class="pkm">{{pkm}} CHF/km</span>{{/if}}
                </div>
                <div class="uk-text-small uk-text-light">{{transport_name}}</div>
                <div class="sponsor"><a class="uk-icon-button" uk-tooltip="Sponsoring Zusage" uk-icon="heart" target="_sponsor" href="{{link}}"></a></div>
            </div>
        </li>
    {{/each}}
    </ul>
    </div>
{% endraw %}
</div>
<div class="uk-padding-small uk-text-small uk-text-muted">Es werden nur Teilnehmende angezeigt, die in ihrer Anmeldung der Publikation zugestimmt haben.</div>
    </div>
</div>


<script>
document.addEventListener("DOMContentLoaded", event => {
   UIkit.util.on('#tn-filter','beforeFilter',() => {
       UIkit.dropdown('#tn-filter-dropdown').hide(false);
       UIkit.dropdown('#tn-sorter-dropdown').hide(false);
   });
});
</script>


