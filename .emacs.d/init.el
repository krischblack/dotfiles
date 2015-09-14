(require 'cl)

(load "~/.emacs.d/aliases")
(load "~/.emacs.d/keys")
(load "~/.emacs.d/functions")
(load "~/.emacs.d/packages")

; zeilen- und spaltennummern in der statuszeile anzeigen
(line-number-mode 1)
(column-number-mode 1)

; markierten textbereich sichtbar machen
(setq-default transient-mark-mode t)

; mit <tab> leerzeichen statt tabulatoren einfuegen
(setq-default indent-tab-mode nil)
(setq-default tab-width 2)

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

;; git follow symlinks
(setq vc-follow-symlinks t)

;; automatic bracket pairing
(electric-pair-mode 1)

;; don't have emacs put a little arrow for line wraps
(global-visual-line-mode 1)

;; show matching parenthesis
(show-paren-mode 1)

;; allows for moving text with select region and M-m up and down 
(require 'move-text)
(move-text-default-bindings)

;; autocomplete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;; dired-jump enable
(require 'dired-x)

