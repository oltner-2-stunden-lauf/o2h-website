---
menu: TrackTok FAQ
heading: Fragen und Antworten zu TrackTok
order: 80
columns: true
---
#### Ich habe TrackTok gestartet, aber ich sehe nur den «Test Run». Wo ist der 2-Stunden-Lauf?

Auf dem TrackTok-Bildschirm wird ein Code aus zwei mal vier Buchstaben angezeigt. Das ist der TrackTok Tag. Wenn du diese Buchstaben in deiner Anmeldung eintippst und danach TrackTok neu startest oder mit dem Finger den Bildschirm nach unten wischst, dann wird der 2-Stunden-Lauf angezeigt.

#### Kann ich TrackTok auch benutzen, wenn mein Handy kein Internet hat?

Ja, TrackTok speichert deine Daten und übermittelt sie automatisch, sobald dein Handy wieder mit dem Internet verbunden ist. Dies geht sogar, wenn du TrackTok zwischenzeitlich beendet hast. Einfach wieder starten und die Daten werden automatisch gesendet.

Beim ersten Start muss TrackTok mit dem Internet verbunden sein, damit es sich beim Lauf-Server registrieren kann.

#### Meine Kinder haben kein Handy, aber laufen mit. Kann ich meinen TrackTok Tag bei mehreren Anmeldungen verwenden?

Ja, wenn ihr gemeinsam rennt, dann ist das kein Problem.  Mehrere Anmeldungen können den gleichen Tag verwenden. Wenn du auf das kleine ℹ Symbol hinter dem Lauf-Eintrag in deinem TrackTok tippst, erfährst du, wer in seiner Anmeldung deinen Tag erfasst hat.

#### Mir ist beim Laufen übel geworden. Kann ich den Lauf wiederholen?

Ja, du kannst den Lauf so oft machen wie du willst. Das beste Resultat zählt.
#### Mein Handyakku hatte <em>nach dem Laufen</em> keinen Strom mehr und mein Handy war nicht am Internet. Sind meine Daten verloren?

Alle Daten, die erfasst wurden, solange das Handy noch lief, sind gespeichert und werden an den Server übermittelt, sobald du TrackTok wieder startest.

#### Mein Handy hat TrackTok <em>während des Laufens</em> beendet. Was kann ich tun?

In einem solchen Fall bleibt dir nicht viel anderes übrig, als deine Strecke auf der Karte zu messen und dann im Anmeldesystem von Hand zu erfassen.

#### Wie oft übermittelt TrackTok meine zurückgelegte Distanz an den Server?

Die Daten werden alle 5 Minuten übermittelt. Wenn du den Lauf vorzeitig abbrichst, findet zusätzlich eine Übermittlung statt.

#### Warum braucht TrackTok all diese Berechtigungen? Wie steht es um meine Privacy?

Um die Strecke zu messen, die du zurückgelegt hast, verwendet TrackTok das GPS in deinem Handy. Damit wäre es auch möglich, deinen Standort zu tracken.  Das geschieht jedoch nicht. TrackTok übermittelt lediglich die zurückgelegte Strecke, die Anzahl Schritte und die Höhendifferenz an den Server. Auf das GPS wird nur zugegriffen, solange die Trackingfunktion aktiv ist.

#### Was hat es mit diesem TrackTok Tag auf sich, den ich in meiner Anmeldung erfassen muss, um TrackTok mit meiner Anmeldung zu verbinden?

Es geht darum, sicherzustellen, dass die Daten von einem bestimmten TrackTok nicht gefälscht werden können. Es soll verhindert werden, dass eine Drittpartei ihre Laufdaten im Namen deines TrackTok an den Server sendet.  Dazu werden die Daten von TrackTok unterschrieben. Mithilfe des Tags kann der Server prüfen, ob die Unterschrift stimmt.

#### Die Antwort oben war jetzt aber etwas sehr fluffig. Wie geht das wirklich mit dem Unterschreiben?

Wenn du dein TrackTok zum ersten Mal startest, erzeugt es ein Ed25519 Schlüsselpaar, bestehend aus einem öffentlichen und einem privaten Schlüssel.  TrackTok unterschreibt seinen öffentlichen Schlüssel mit seinem privaten Schlüssel und sendet den unterschriebenen öffentlichen Schlüssel an den Server. Der Server prüft nun, ob die Unterschrift zum öffentlichen Schlüssel passt, und speichert den Schlüssel. Die App erhält als Antwort einen TrackTok Tag, der dann in der App angezeigt wird. Immer, wenn TrackTok Daten an den Server sendet, signiert es diese mit seinem privaten Schlüssel. Der Server kann anhand des gespeicherten öffentlichen Schlüssels die Daten verifizieren und ist sicher, dass die Daten von deiner TrackTok App stammen. Natürlich ist das System nur sicher, solange keine Dritten an den privaten Schlüssel deiner TrackTok App gelangen. Dieser ist im Datenverzeichnis der TrackTok App gespeichert, jedoch in einem Bereich, der nicht öffentlich zugänglich ist. Der Quellcode von TrackTok ist öffentlich, falls du dich für die eigentliche Implementation interessierst.

#### Wer hat TrackTok geschrieben?

TrackTok wurde von Tobias Oetiker im Jahr 2020 für den Oltner 2-Stunden-Lauf programmiert, um zu ermöglichen, dass der 33. Oltner 2-Stunden-Lauf trotz
Corona sicher durchgeführt werden kann. Mit der App wird die "Rundenzählung" ersetzt. TrackTok ist Teil eines Softwarepakets, mit dem die gesamte Lauf-Verwaltung automatisiert wird. Von der Anmeldung zur Sponsorensuche bis zu Rechnungsstellung und Zahlungsverfolgung. Tobias Oetiker hat TrackTok unter der GNU Public License veröffentlicht und freut sich über Pull-Requests. Den Source Code findest du auf GitHub.

#### Kann ich TrackTok für eine eigene Laufveranstaltung nutzen?

Ja, das ist möglich. Wende dich an Tobias Oetiker <tobi@oetiker.ch> für ein entsprechendes Angebot.
