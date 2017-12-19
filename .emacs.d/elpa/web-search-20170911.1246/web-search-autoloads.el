;;; web-search-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "web-search" "web-search.el" (23096 33680 757980
;;;;;;  213000))
;;; Generated autoloads from web-search.el

(autoload 'web-search "web-search" "\
Search for QUERY on website(s).

Without prefix argument, search on `web-search-default-provider'.
One C-u, choose a provider.
Two C-u, choose a tag (notes that a tag can match multiple providers).

\(fn QUERY &optional PROVIDERS TAG)" t nil)

;;;***

;;;### (autoloads nil nil ("web-search-pkg.el") (23096 33680 729978
;;;;;;  702000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; web-search-autoloads.el ends here
