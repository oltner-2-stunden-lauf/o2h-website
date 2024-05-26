---
menu: Resultate
heading: Resultate
order: 3
key: res-modal
toggle: true
navbar: true
---

<div id="res-modal" class="uk-modal-container" uk-modal>
    <div class="uk-modal-dialog">
    <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Zwischenstand</h2>
        <button class="uk-modal-close-full" type="button" uk-close></button>

{% raw %}
    <div class="uk-padding-small  uk-padding-remove-vertical ">
        <script class="webData" type="handlebar">
        <ul class="uk-child-width-1-1 uk-child-width-1-3@s uk-grid-small" uk-grid>
            <li>
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
            Sponsorgeld zugesagt: {{meta.totalchf}}&nbsp;CHF<br/>
            Sponsorgeld eingezahlt: {{meta.rctotalchf}}&nbsp;CHF
            </div>
            </li>
            <li>
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
            Gelaufen: {{meta.completed}}<br/>
            Angemeldet: {{meta.parts}}
            </div>
            </li>
            <li>
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
            <a target="google-photo" href="https://photos.app.goo.gl/jn3bvijepSKaDThX8">Bilder vom
            Lauf</a><br/>
<!--        <a href="#bericht-modal" uk-toggle>Laufbericht</a> -->
            <a target="listmonk"
            href="https://listmonk.o2h.ch/subscription/form">Anmeldung Mailingliste</a><br/> &nbsp;
{% endraw %}
            
            </div>
            </li>
        </ul>
        </script>
    </div>
{% raw %}
   <!-- <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">On the Road</h2>
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
    </div> -->


<h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Gruppen Resultate</h2>

<script class="webData" type="handlebar">
    <div class="uk-overflow-auto uk-padding-small">
<table uk-overflow-auto class="uk-table uk-table-divider uk-table-striped">
    <thead>
<tr><th class="uk-table-expand">Gruppe</th>
    <th>Pers</th>
    <th>Total</th>
    <th>Gruppenanteil</th>
    <th>Eingezahlt</th>
</tr>
</thead>
<tbody>
<tr>
  <td><div>Lokales Projekt</td>
  <td class="uk-text-right">{{meta.completed}}</td>
  <td class="uk-text-right"></td>
  <td class="uk-text-right">{{meta.totallocalchf}}&nbsp;CHF</td>
  <td class="uk-text-right">{{meta.rctotallocalchf}}&nbsp;CHF</td>
</tr>
<tr>
  <td><div>Internationales Projekt</td>
  <td class="uk-text-right">{{meta.completed}}</td>
  <td class="uk-text-right"></td>
  <td class="uk-text-right">{{meta.totalintlchf}}&nbsp;CHF</td>
  <td class="uk-text-right">{{meta.rctotalintlchf}}&nbsp;CHF</td>
</tr>
{{#each grop}}
<tr>
  <td>{{name}}</td>
  <td class="uk-text-right">{{parts}}</td>
  <td class="uk-text-right">{{total_chf}}&nbsp;CHF</td> 
  <td class="uk-text-right">{{expected_chf}}&nbsp;CHF</td> 
  <td class="uk-text-right">{{received_chf}}&nbsp;CHF</td>
</tr>
{{/each}}
</tbody>
</table>
</div>
</script>

 <h2 class="uk-padding-small uk-padding-remove-bottom uk-modal-title">Einzel Resultate</h2>
 <div id="res-filter" uk-filter="delay: 2000;target: .res-filter">
     <ul class="uk-padding-small uk-padding-remove-vertical uk-subnav uk-subnav-pill">
        <li><a href="#">Filter</a>
            <div id="res-filter-dropdown" uk-dropdown>
             <script class="webData" type="handlebar">
                <ul class="uk-nav uk-dropdown-nav">
                    <li class="uk-nav-header">Gruppe</li>
                {{#each grop}}
                {{#if pub_part}}
                    <li uk-filter-control="filter: [data-group='{{name}}'];group: grop;">
                        <a href="#">{{name}}</a>
                    </li>
                {{/if}}
                {{/each}}
                    <li class="uk-nav-header">Kategorie</li>
                {{#each transport}}
                    {{#if inuse }}
                    <li uk-filter-control="filter: [data-transport='{{name}}'];group: transport;">
                        <a href="#">{{name}}</a>
                    </li>
                    {{/if}}
                {{/each}}
                </ul>
            </script>
            </div>
        </li>
        <li>
            <a href="#">Sort</a>
            <div id="res-sorter-dropdown" uk-dropdown>
                <ul class="uk-nav uk-dropdown-nav">
                    <li uk-filter-control="sort: data-name;group: sort;">
                        <a href="#">Name</a></li>
                    <li uk-filter-control="sort: data-chf; order: desc;group: sort;">
                        <a href="#">Sponsorzusagen</a></li>
                    <li uk-filter-control="sort: data-km; order: desc;group: sort;">
                        <a href="#">Kilometer</a></li>
                </ul>
            </div>
        </li>
        <li uk-filter-control="filter: [data-all='x'];sort: data-chf;order: desc;" class="uk-active"><a  uk-icon="thumbnails" href="#"></a></li>
    </ul> 
    <script class="webResults" type="handlebar">
    <div class="uk-padding-small  uk-padding-remove-vertical ">
    <ul class="res-filter uk-child-width-1-1 uk-child-width-1-2@s
    uk-child-width-1-3@m uk-child-width-1-4@l uk-grid-small" uk-grid="masonry: true">
    {{#each results}}
        <li data-transport="{{transport}}"
            data-all="x"
            data-name="{{name}}"
            data-group="{{grop}}"
            data-km="{{dist}}"
            data-chf="{{chf}}">
            <div class="part uk-card uk-card-hover uk-card-small uk-card-default uk-card-body uk-position-relative">
                <div class="uk-text-truncate uk-text-bold name">{{name}}</div>
                {{#if grop}}<div class="uk-text-small uk-text-light">{{grop}}</div>{{/if}}
                <div class="uk-text-small">{{transport}}</div>
                <div class="result">{{chf}}&nbsp;CHF / {{dist}} km</div>
                <div class="sponsor">
                    <a class="uk-icon-button" uk-tooltip="Sponsoring Zusage" uk-icon="heart" target="_sponsor" href="{{link}}"></a>
                </div>
            </div>
        </li>
    {{/each}}
    </ul>
    </div>
    </script>
 </div> <!-- end filter -->

<div class="uk-padding-small uk-text-small uk-text-muted">Es werden nur Teilnehmende angezeigt, die in ihrer Anmeldung der Publikation zugestimmt haben.</div>
{% endraw %}
</div>
</div>
<script>
document.addEventListener("DOMContentLoaded", event => {
   UIkit.util.on('#res-filter','beforeFilter',() => {
       UIkit.dropdown('#res-filter-dropdown').hide(false);
       UIkit.dropdown('#res-sorter-dropdown').hide(false);
   });
   //if (!NavHash) {
   //    UIkit.modal('#res-modal').show();
   //}
});
</script>
