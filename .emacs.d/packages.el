;;; package --- MGMT
;;; Commentary: 
;; installs required packages 

(require 'cl)

;;; Code:
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
)


(defvar prelude-packages
  '(
    ack
    auto-complete
    dired+
    puppet-mode
    dired-single
    popup
    iedit    
    move-text
    move-line
		json-mode
		yaml-mode
		flycheck		
    )
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)

(provide 'packages)
;;; packages ends here
