(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
    (google-this google-c-style smart-mode-line-powerline-theme smart-mode-line jdee auto-complete-exuberant-ctags auto-complete-auctex auctex auto-complete-clang auto-complete-c-headers auto-complete yasnippet pythonic python-cell python-x python-test python-environment python-info python-switch-quotes python-docstring python-django python-mode php-mode pkgbuild-mode apel))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq jdee-server-dir "/home/joaomanoel/.local/jars")

(setq sml/theme 'powerline)
(sml/setup)

(google-this-mode 1)
;(global-set-key (kbd "C-x g") 'google-this-mode-submap)
