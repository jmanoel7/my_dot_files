;; -----------------------------------------------------------------------------
;; Repositorys: Melpa, Gnu elpa
;; -----------------------------------------------------------------------------

(require 'package) ;; You might already have this line

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t))

(package-initialize) ;; You might already have this line

;; install use-package if it isn't installed
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))          ;; enable use-package
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

;; load my files .el
(add-to-list 'load-path "~/.emacs.d/load.el")


;; -----------------------------------------------------------------------------
;; Customize: Variables
;; -----------------------------------------------------------------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (c++-mode . "stroustrup")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(indent-tabs-mode nil)
 '(package-selected-packages
   (quote
    (org-plus-contrib org-gcal web-mode w3m use-package smartparens smart-mode-line-powerline-theme python-mode pony-mode pkgbuild-mode php-auto-yasnippets org-vcard org-dropbox org-download org-ac jdee helm-gtags google-translate google-this google-maps google-contacts google-c-style google edit-server django-theme color-theme auto-complete-exuberant-ctags auto-complete-c-headers apel)))
 '(tab-stop-list nil)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; -----------------------------------------------------------------------------
;; Package: apel
;; -----------------------------------------------------------------------------

(use-package apel
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: jdee
;; -----------------------------------------------------------------------------

(use-package jdee
  :init (setq jdee-server-dir "~/.local/jars")
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: color-theme
;; -----------------------------------------------------------------------------

(use-package color-theme
  :config (progn
            (color-theme-initialize)
            (color-theme-charcoal-black))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: smart-mode-line-powerline-theme
;; -----------------------------------------------------------------------------

(use-package smart-mode-line-powerline-theme
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: smart-mode-line
;; -----------------------------------------------------------------------------

(use-package smart-mode-line
  :init (setq sml/theme 'powerline)
  :config (sml/setup)
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: edit-server
;; -----------------------------------------------------------------------------

(use-package edit-server
  ;; :config (edit-server-start)
  :config (server-start)
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: smartparens
;; -----------------------------------------------------------------------------

(use-package smartparens
  :config (progn
            (smartparens-global-mode 1)
            ;; C / C++
            (sp-with-modes '(c-mode c++-mode)
              (sp-local-pair "{"  nil  :post-handlers '(("||\n[i]" "RET")))
              (sp-local-pair "/*" "*/" :post-handlers '((" | " "SPC")
                                                        ("* ||\n[i]" "RET"))))
            ;; Java
            (sp-with-modes '(java-mode jdee-mode)
              (sp-local-pair "{"  nil  :post-handlers '(("||\n[i]" "RET")))))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: python-mode
;; -----------------------------------------------------------------------------

;; :mode ("\\<SConstruct\\>$" . python-mode)
;; :mode ("\\.py\\'" . python-mode)
;; :mode ("\\.\\(py\\|\\<SConstruct\\>\\)\\'" . python-mode)
;; :mode ("\\.\\(py\\|\\<SConstruct\\>\\)$" . python-mode)

;; (use-package python
;;   :mode ("\\<SConstruct\\>$" . python-mode)
;;   :config (progn
;;             (use-package elpy
;;               :config (elpy-enable)
;;               :ensure t))
;;   :defer t)

;; (use-package python
;;   :mode ("\\.py\\'" . python-mode)
;;   :interpreter ("python" . python-mode))

(use-package python-mode
  :mode ("\\.\\(py\\|\\<SConstruct\\>\\)$" . python-mode)
  :interpreter ("python2" . python-mode)
  :config (progn
            (use-package elpy
              :config (elpy-enable)
              :ensure t))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: pony-mode
;; -----------------------------------------------------------------------------

(use-package pony-mode
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: django-theme
;; -----------------------------------------------------------------------------

(use-package django-theme
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: web-mode
;; -----------------------------------------------------------------------------

(use-package web-mode
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: yasnippet
;; -----------------------------------------------------------------------------

(use-package yasnippet
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: helm-gtags
;; -----------------------------------------------------------------------------

(use-package helm-gtags
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: w3m
;; -----------------------------------------------------------------------------

(use-package w3m
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: pkgbuild-mode
;; -----------------------------------------------------------------------------

(use-package pkgbuild-mode
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: php-mode
;; -----------------------------------------------------------------------------

(use-package php-mode
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: php-auto-yasnippets
;; -----------------------------------------------------------------------------

(use-package php-auto-yasnippets
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: google
;; -----------------------------------------------------------------------------

(use-package google
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: google-this
;; -----------------------------------------------------------------------------

(use-package google-this
  :config (google-this-mode 1)
  :ensure t)
;(global-set-key (kbd "C-x g") 'google-this-mode-submap)


;; -----------------------------------------------------------------------------
;; Package: google-translate
;; -----------------------------------------------------------------------------

(use-package google-translate
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: google-maps
;; -----------------------------------------------------------------------------

(use-package google-maps
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: google-contacts
;; -----------------------------------------------------------------------------

(use-package google-contacts
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: google-c-style
;; -----------------------------------------------------------------------------

(use-package google-c-style
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auctex
;; -----------------------------------------------------------------------------

;; (use-package auctex
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete
;; -----------------------------------------------------------------------------

(use-package auto-complete
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-auctex
;; -----------------------------------------------------------------------------

;; (use-package auto-complete-auctex
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-exuberant-ctags
;; -----------------------------------------------------------------------------

(use-package auto-complete-exuberant-ctags
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-c-headers
;; -----------------------------------------------------------------------------

(use-package auto-complete-c-headers
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org
;; -----------------------------------------------------------------------------

(use-package org
  :ensure t
  :pin org)


;; -----------------------------------------------------------------------------
;; Package: org-ac
;; -----------------------------------------------------------------------------

(use-package org-ac
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-dropbox
;; -----------------------------------------------------------------------------

(use-package org-dropbox
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-download
;; -----------------------------------------------------------------------------

(use-package org-download
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-vcard
;; -----------------------------------------------------------------------------

(use-package org-vcard
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-gcal
;; -----------------------------------------------------------------------------

(use-package org-gcal
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-plus-contrib
;; -----------------------------------------------------------------------------

(use-package org-plus-contrib
  :ensure t
  :pin org)
