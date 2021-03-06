;;; neon-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "neon-mode" "neon-mode.el" (0 0 0 0))
;;; Generated autoloads from neon-mode.el

(autoload 'neon-mode "neon-mode" "\
Conf Mode starter for Neon files.
\"Assignments\" are with `:'.
For details see `conf-mode'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.neon\\'" . neon-mode))

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "neon-mode" '("neon-mode-" "conf-neon-font-lock-keywords")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; neon-mode-autoloads.el ends here
