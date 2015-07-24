; kein begruessungsbildschirm
;;(setq inhibit-startup-message t)

; zeilen- und spaltennummern in er statuszeile anzeigen
(line-number-mode 1)
(column-number-mode 1)

; markierten textbereich sichtbar machen
(setq-default transient-mark-mode t)

; mit <tab> leerzeichen statt tabulatoren einfuegen
(setq-default indent-tab-mode nil)

; letzte zeile automatisch mit newline-code abschliessen
(setq require-final-newline t)

; syntaxhervorhebung automatisch aktivieren
(global-font-lock-mode t)

; cursor position speichern
(require 'saveplace)
(setq-default save-place t)

; scrollbar auf der rechten seite
(set-scroll-bar-mode 'right')

(global-set-key [f11]  'goto-line)
(global-set-key [f5]  'advertised-undo)
