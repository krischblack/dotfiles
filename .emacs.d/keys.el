


(global-set-key (kbd "C-x M-t") 'cleanup-region)
(global-set-key (kbd "C-c n") 'cleanup-buffer)

(global-set-key [f11]  'goto-line)

(global-set-key (kbd "C-c u") 'advertised-undo)

(global-set-key (kbd "C-c j") 'dired-jump)
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-c l") 'goto-line)


(global-set-key (kbd "C-c C-o") 'xah-open-file-fast)
(defvar xah-filelist nil "alist for files i need to open frequently. Key is a short abbrev, Value is file path.")
(setq xah-filelist
      '(
        ("puppet" . "/etc/puppet/" )
	("puppet_production" . "/etc/puppet/environments/production/" )
        ("apache" . "/etc/apache2/sites-enabled" )
        ("haproxy" . "/etc/haproxy/haproxy.cfg" )
	("home" . "~/" )
        ;; more here
	) )

(defun xah-open-file-fast (openCode)
  "Prompt to open a file from a pre-defined set."
  (interactive
   (list (ido-completing-read "Open:" (mapcar (lambda (x) (car x)) xah-filelist)))
   )
  (find-file (cdr (assoc openCode xah-filelist)) ) )
