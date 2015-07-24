(load "~/.emacs.d/aliases")
(load "~/.emacs.d/keys")
(load "~/.emacs.d/functions")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
  )


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


; cursorposition speichern
(require 'saveplace)
(setq-default save-place t)

;; no splash screen
(setq inhibit-splash-screen t initial-scratch-message nil)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; start ido mode
(ido-mode t)
(setq ido-enable-flex-matching t
     ido-use-virtual-buffers t)



