(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize) ;; You might already have this line

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(setq c-default-style "k&r"  
      c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)  
(setq tab-width 4)
(setq tab-stop-list ())
(set-default-font "hack-10")

(fset 'yes-or-no-p 'y-or-n-p)
(setq scroll-margin 3
      scroll-conservatively 10000)
(require 'saveplace)
(setq-default save-place t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-font-lock-mode t)
(which-function-mode t)
(auto-compression-mode 1)

(setq kill-ring-max 1024)
(setq max-lisp-eval-depth 40000)
(setq max-specpdl-size 10000)
(setq undo-outer-limit 5000000)
(setq message-log-max t)
(setq eval-expression-print-length nil)
(setq eval-expression-print-level nil)
(setq history-delete-duplicates t)

(setq default-buffer-file-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq default-keyboard-coding-system 'utf-8-unix)
(setq default-process-coding-system 'utf-8-unix)
(setq default-sendmail-coding-system 'utf-8-unix)
(setq default-terminal-file-coding-system 'utf-8-unix)

(require 'showtip)
(global-visual-line-mode 1)

(setq browse-url-generic-program (executable-find "google-chrome-stable")
      browse-url-browser-function 'browse-url-generic)
(setq modelinepos-column-limit 80)

(require 'autopair)
(autopair-global-mode 1)
(require 'highlight-parentheses)
(global-set-key (kbd "C-x k") 'kill-this-buffer)


(setq x-select-enable-clipboard t)
(global-linum-mode t)
(setq inhibit-startup-message nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "718fb4e505b6134cc0eafb7dad709be5ec1ba7a7e8102617d87d3109f56d9615" "b4117b5e16a0d1d9a265cbdc0c4062f4b3f832da38316f9d65ea39f1b2dd0063" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (cmake-mode solarized-theme git-command web-mode chinese-conv 2048-game main-line showtip haskell-mode haskell-emacs-base haskell-emacs clojure-mode web-search auto-complete-clang dashboard helm-zhihu-daily xclip hexo blog-admin 4clojure ac-cake neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Rename buffer name by type <C-f3>
(global-set-key [(C-f3)] 'rename-current-buffer-file)
(defun rename-current-buffer-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (error "Buffer '%s' is not visiting a file!" name)
      (let ((new-name (read-file-name "New name: " filename)))
        (if (get-buffer new-name)
            (error "A buffer named '%s' already exists!" new-name)
          (rename-file filename new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil)
          (message "File '%s' successfully renamed to '%s'"
                   name (file-name-nondirectory new-name)))))))


(add-to-list 'load-path "/home/kvar_ispw17/.emacs.d/elpa/neotree-20170522.758")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(global-set-key [f9] 'menu-bar-open)
(global-set-key [f5] 'compile)
(global-set-key [(C-f5)] 'recompile)
(global-set-key [f7] 'next-error)
(global-set-key (kbd "C-c C-c") 'comment-region)
