---
menu: Impressum
heading: Impressum
order: 99
ma:
    - n: Andrea Zimmermann
      f: Projekte
      c: projekte@o2h.ch
    - n: Dominik Fischer
      f: Streckensicherung
      c: streckensicherung@o2h.ch
    - n: Andy Tengler
      f: Staff
      c: staff@o2h.ch
    - n: Hans Marti
      f: Marketing
      c: marketing@o2h.ch
    - n: Claudia Strässle
      f: Finanzen
    - n: Yvonne Ingold
      f: Medien
      c: presse@o2h.ch
    - n: Doris Oetiker
      f: Verpflegung
    - n: Nadia Rhiner-Niggli
      f: Verpflegung
    - n: Klaus Kaier
      f: Leitung
    - n: Tobi Oetiker
      f: Grafik, Programmierung, Konzeption
      c: anmeldung@o2h.ch

---
Der 2-Stunden-Lauf wird von den Mitgliedern des Vereins Oltner 2-Stunden-Lauf organisiert und durchgeführt. Dass alle Sponsorgelder direkt den jeweiligen Projekten zugutekommen können, wird durch den ehrenamtlichen Einsatz der Vereinsmitglieder und grosszügige Beiträge unserer Anlasssponsor:innen ermöglicht.


<h4>Mitarbeiter:innen</h4>

<div class="uk-column-1-2@m">

{% for p in page.ma %}
<div class="uk-margin-bottom">{{p.n}}; <i>{{p.f}}</i>{% if p.c %};
    <a href="mailto:{{p.c}}">{{p.c}}</a>
  {% endif %}
</div>
{% endfor %}
</div>
