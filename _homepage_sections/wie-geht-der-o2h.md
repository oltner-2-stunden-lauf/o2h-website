---
menu: Über den Lauf
heading: Der 2-Stunden-Lauf in vier Punkten
order: 02
navbar: false
cards:
    - title: Sponsoring
      body: |
        Vor dem Lauf suchst du dir Sponsor:innen, welche dir pro Kilometer, den du am Lauf zurücklegst, einen bestimmten Betrag zusagen. Sponsor:innen findest du unter deinen Verwandten, Freunden, Arbeitskolleginnen etc. Oft sind auch Firmen bereit, Läufer:innen zu sponsern. Der Erlös des Laufs kommt den beschriebenen Projekten zugute.
    - title: Laufen und Rollen
      body: |
        Der Oltner 2-Stunden-Lauf findet einerseits als traditioneller Lauf-Event in der Oltner Innenstadt statt. Gestartet wird dabei am 18. September 2021 um 15 Uhr auf der Kirchgasse. Andererseits kann man vom 11. bis am 18. September auch am dezentralen «Lauf» teilnehmen. Neben dem Laufen ist eine <a href="#transport-popup" uk-toggle>breite Palette</a> von Fortbewegungsmitteln zugelassen. Vom Trottinett übers Velo bis zum Rollstuhl.
    - title: Online-Anmeldung
      body: |
        Wenn du beim Oltner 2-Stunden-Lauf mitmachen willst, dann ist es ganz wichtig, dass du dich <a href="/o2h#lang=de">anmeldest</a>. Im Anmeldesystem kannst du angeben, welches Fortbewegungsmittel du nutzen willst oder ob du am Lauf in der Oltner Innenstadt teilnehmen wirst. Du kannst dir das Lauf-Shirt bestellen und – ganz wichtig – : Du kannst deine Sponsoring-Zusagen verwalten.
    - title: Was zählt, ist die Distanz
      body: |
        Bei den meisten Läufen geht es darum, eine bestimmte Distanz in möglichst kurzer Zeit zurückzulegen. Beim 2-Stunden-Lauf ist es umgekehrt. Es geht darum, innerhalb von zwei Stunden eine möglichst grosse Distanz respektive beim Lauf in der Oltner Innenstadt möglichst viele Runden zurückzulegen. 

---
Der Oltner 2-Stunden-Lauf ist ein Sponsorenlauf, bei dem es darum geht, zur Finanzierung von Non-Profit-Projekten beizugtragen. Jedes Jahr wählt das Lauf-OK ein lokales und ein internationales Projekt aus, das mit einem respektive zwei Dritteln des Erlöses unterstützt wird. 

Auch lokale Vereine und Schulklassen sind eingeladen, am Lauf teilzunehmen und ein Drittel des jeweiligen Erlöses für ein eigenes Projekt einzusetzen.


{% raw %}
<!-- This is the modal with the default close button -->
<div class="webData" id="transport-popup" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <button class="uk-modal-close-default" type="button" uk-close></button>
        <h2 class="uk-modal-title">Fortbewegungsmittel</h2>
        <ul class="uk-list uk-list-hyphen">       
        {{#each transport}}
            <li>{{desc}} {{#if inuse}}({{inuse}} TN){{/if}}</li>
        {{/each}}        
        </ul>
    </div>
</div>
{% endraw %}