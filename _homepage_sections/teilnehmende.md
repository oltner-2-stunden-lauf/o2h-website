---
menu: Teilnehmende
heading: Diese Leute haben sich schon angemeldet
order: 6
---
Wenn du bei deiner Anmeldung das Einverständnis gibst, dass dein Name auf unserer Homepage publiziert wird, dann erscheinst du in der untenstehenden Liste:


<div class="webData">
<div class="uk-card uk-card-small uk-card-hover uk-card-default">
<div class="uk-card-body">
{% raw %}
{{#each part}}
  <a title="{{grop}}" target="_blank" class="uk-link-text" href="{{link}}">{{given}}&nbsp;{{bold_index family}}</a>{{#if fix}}&nbsp;{{fix}}&#8239;CHF{{#if pkm}},{{/if}}{{/if}}{{#if pkm}}&nbsp;{{pkm}}&#8239;CHF/km{{/if}}{{#if @last}}.{{else}};{{/if}}
{{/each}}
{% endraw %}
</div></div>
</div>


Wenn du jemanden von dieser Liste sponsoren willst, klicke auf seinen Namen!