---
menu: Teilnehmende
heading: Diese Leute haben sich schon angemeldet
order: 6
---
Wenn du bei deiner Anmeldung das Einverständnis gibst, dass dein Name auf unserer Homepage publiziert wird, dann erscheinst du in der untenstehenden Liste:

<div class="webData" id="tn-filter" uk-filter="target: .js-filter">
{% raw %}
    <ul class="uk-subnav uk-subnav-pill" uk-margin>
        <li>
            <a href="#">Filter</a>
            <div id="tn-filter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                    <li class="uk-nav-header">Gruppe</li>
                {{#each grop}}
                {{#if pub_part}}
                    <li uk-filter-control="filter: [data-group='{{name}}'];"><a href="#">{{name}}</a></li>
                {{/if}}
                {{/each}}
                    <li class="uk-nav-header">Kategorie</li>
                {{#each transport}}
                    <li uk-filter-control="filter: [data-transport='{{id}}'];"><a href="#">{{desc}}</a></li>
                {{/each}}
                </ul>
            </div>
        </li>
        <li>
            <a href="#">Sort</a>
            <div id="tn-sorter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                    <li uk-filter-control="sort: data-given"><a href="#">Vorname</a></li>
                    <li uk-filter-control="sort: data-family"><a href="#">Nachname</a></li>
                    <li uk-filter-control="sort: data-fix; order: desc;"><a href="#">Sponsorzusagen Fix</a></li>
                    <li uk-filter-control="sort: data-pkm; order: desc;"><a href="#">Sponsorzusagen pro Km</a></li>
                </ul>
            </div>
        </li>
        <li class="uk-active" uk-filter-control><a  uk-icon="thumbnails" href="#"></a></li>
    </ul>    
    <ul class="js-filter uk-child-width-1-2 uk-child-width-1-3@m uk-grid-small" uk-grid="masonry: true">
    {{#each part}}
        <li data-group="{{grop}}" 
            data-fix="{{fix}}" 
            data-given="{{given}}" 
            data-family="{{family}}"
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
{% endraw %}
</div>

<script>
UIkit.util.on('#tn-filter','afterFilter',() => {
    UIkit.dropdown('#tn-filter-dropdown').hide(false);
    UIkit.dropdown('#tn-sorter-dropdown').hide(false);
});
</script>