---
menu: Gruppenanmeldung
heading: Gruppenanmeldung
order: 7
---
Gruppen die am Oltner 2-Stunden-Lauf teilnehmen, können 33&#x202F;% des von den
Gruppenmitgliedern erlaufenen Geldes für ein eigenes Projekt einsetzen. Um als Gruppe am Lauf teilzunehmen, musst du in einem ersten Schritt die Gruppe selbst im Anmeldesystem registrieren. Das geht so:

<div class="uk-column-1-2@m">

<ul class="uk-list uk-list-decimal">
<li>Du meldest dich ganz normal über das Anmeldesystem beim
Lauf an (ohne in einer Gruppe zu sein).</li>
<li>Nach der Anmeldung wählst du in der Tableiste "Meine Gruppe". Hier kannst du alle Informationen zu deiner Gruppe und eurem Projekt erfassen.</li>

<li>Du kannst deine Gruppe als "privat" markieren, dann kannst lediglich du
selber Leute anmelden.</li>

<li>Im dritten Tab kannst du weitere Personen für den Lauf anmelden. Alle Korrespondenz geht an dich. Ideal für Kindergruppen.</li>
</ul>

</div>

Zur <a href="#grp-modal" uk-toggle>List der angemeldeten Gruppen</a>. 

<div id="grp-modal" class="uk-modal-container" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
    <h2 class="uk-modal-title">Es sind schon folgende Gruppen angemeldet</h2>
        <button class="uk-modal-close-full" type="button" uk-close></button>
        
{% raw %}
<script class="webData" type="handlebar">
<table uk-overflow-auto class="uk-table uk-table-divider uk-table-justify  uk-table-striped">
    <thead>
<tr><th class="uk-width-5-6">Gruppe</th>
    <th class="uk-table-shrink">Pers</th>
    <th class="uk-table-shrink">CHF/km</th>
    <th class="uk-table-shrink">CHF</th>
</tr>
</thead>
<tbody>
{{#each grop}}
<tr>
  <td class="uk-text-truncate"><div>{{name}}{{#if project}}</div><small><div style="margin-bottom: 2px;
line-height: 3ex;">33&#8239;% für {{project}}</div></small>{{else}}{{/if}}</td>
  <td>{{parts}}</td>
  <td>{{pkm}}</td>
  <td>{{fix}}</td>
</tr>
{{/each}}
</tbody>
</table>
</script>
{% endraw %}
</div>
</div>

