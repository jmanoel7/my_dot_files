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
    (org-plus-contrib org-gcal web-mode w3m use-package smartparens smart-mode-line-powerline-theme python-mode pony-mode php-mode php-auto-yasnippets org-vcard org-dropbox org-download org-ac jdee helm-gtags google-translate google-this google-maps google-contacts google-c-style google edit-server django-theme color-theme auto-complete-exuberant-ctags auto-complete-c-headers apel auctex auto-complete-auctex)))
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
  :init (setq jdee-server-dir "/usr/local/java/jars")
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
  :config (yas-global-mode 1)
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
;; (global-set-key (kbd "C-x g") 'google-this-mode-submap)


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
  :config (progn
            (add-hook 'c-mode-common-hook 'google-set-c-style)
            (add-hook 'c-mode-common-hook 'google-make-newline-indent))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auctex
;; -----------------------------------------------------------------------------

;; (use-package auctex
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete
;; -----------------------------------------------------------------------------

;; (use-package auto-complete
;;   :config (progn
;;             (require 'auto-complete-config)
;;             (ac-config-default))
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-auctex
;; -----------------------------------------------------------------------------

;; (use-package auto-complete-auctex
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-exuberant-ctags
;; -----------------------------------------------------------------------------

;; (use-package auto-complete-exuberant-ctags
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: auto-complete-c-headers
;; -----------------------------------------------------------------------------

;; (use-package auto-complete-c-headers
;;   :init (progn
;;          (defun my:ac-c-header-init ()
;;             (require 'auto-complete-c-headers)
;;             (add-to-list 'ac-sources 'ac-source-c-headers)
;;             (add-to-list 'achead:include-directories '"/usr/include")
;;             (add-to-list 'achead:include-directories '"/usr/local/include")
;;             (add-to-list 'achead:include-directories '"/usr/include/c++/4.9")
;;             (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu/c++/4.9")
;;             (add-to-list 'achead:include-directories '"/usr/include/c++/4.9/backward")
;;             (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.9/include")
;;             (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.9/include-fixed")
;;             (add-to-list 'achead:include-directories '"/usr/include/x86_64-linux-gnu"))
;;           (add-hook 'c++-mode-hook 'my:ac-c-header-init)
;;           (add-hook 'c-mode-hook   'my:ac-c-header-init))
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org
;; -----------------------------------------------------------------------------

;; (use-package org
;;   :ensure t
;;   :pin org)


;; -----------------------------------------------------------------------------
;; Package: org-ac
;; -----------------------------------------------------------------------------

;; (use-package org-ac
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-plus-contrib
;; -----------------------------------------------------------------------------

(use-package org-plus-contrib
  :ensure t
  :pin org)


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

;; (use-package org-vcard
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: org-gcal
;; -----------------------------------------------------------------------------

;; (use-package org-gcal
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: plsql
;; -----------------------------------------------------------------------------

;; (use-package plsql
;;   :init (progn
;;           (setq auto-mode-alist
;;                 (append
;;                  '(("\\.\\(p\\(?:k[bg]\\|ls\\)\\|sql\\)\\'" . plsql-mode))
;;                  auto-mode-alist))
;;           (speedbar-add-supported-extension "pls")
;;           (speedbar-add-supported-extension "pkg")
;;           (speedbar-add-supported-extension "pkb")
;;           (speedbar-add-supported-extension "sql"))
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: format-sql
;; -----------------------------------------------------------------------------

;; (use-package format-sql
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: ejc-sql
;; -----------------------------------------------------------------------------

(use-package ejc-sql
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: mysql-to-org
;; -----------------------------------------------------------------------------

;; (use-package mysql-to-org
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: mysql2sqlite
;; -----------------------------------------------------------------------------

;; (use-package mysql2sqlite
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: ob-sql-mode
;; -----------------------------------------------------------------------------

;; (use-package ob-sql-mode
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: sql-indent
;; -----------------------------------------------------------------------------

;; (use-package sql-indent
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: sqlup-mode
;; -----------------------------------------------------------------------------

;; (use-package sqlup-mode
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: sqlplus
;; -----------------------------------------------------------------------------

;; (use-package sqlplus
;;   :ensure t)


;; -----------------------------------------------------------------------------
;; Package: iedit
;; -----------------------------------------------------------------------------

(use-package iedit
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: flymake-google-cpplint
;; -----------------------------------------------------------------------------

(use-package flymake-google-cpplint
  :init (progn
          (defun my:flymake-google-init ()
            (require 'flymake-google-cpplint)
            (custom-set-variables
             '(flymake-google-cpplint-command "/usr/local/pyenv/shims/cclint"))
            (flymake-google-cpplint-load))
          (add-hook 'c-mode-hook   'my:flymake-google-init)
          (add-hook 'c++-mode-hook 'my:flymake-google-init))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: flymake-cursor
;; -----------------------------------------------------------------------------

(use-package flymake-cursor
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: cedet
;; -----------------------------------------------------------------------------

(use-package cedet
  :init (progn
          (semantic-mode 1)
          (defun my:add-semantic-to-autocomplete()
            (add-to-list 'ac-sources 'ac-source-semantic))
          (add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)
          (global-semanticdb-minor-mode 1)
          (global-semantic-idle-scheduler-mode 1)
          (semantic-mode 1)
          (global-ede-mode 1))
  :ensure t)


;; -----------------------------------------------------------------------------
;; Package: irony
;; -----------------------------------------------------------------------------

(use-package irony
  :init (progn
          (setenv "LD_LIBRARY_PATH" "/usr/lib/llvm-3.5/lib/"))
          ;; (setenv "LD_LIBRARY_PATH" "/usr/lib/"))
  :config (progn
          ;; (irony-enable 'ac)
          ;; (defun my:irony-enable()
          ;;   (when (member major-mode irony-known-modes)
          ;;     (irony-mode 1)))
          ;; (add-hook 'c++-mode-hook  'my:irony-enable)
          ;; (add-hook 'c-mode-hook    'my:irony-enable)
          ;; (add-hook 'objc-mode-hook 'my:irony-enable)
          (add-hook 'c++-mode-hook  'irony-mode)
          (add-hook 'c-mode-hook    'irony-mode)
          (add-hook 'objc-mode-hook 'irony-mode)
          ;; replace the `completion-at-point' and `complete-symbol' bindings in
          ;; irony-mode's buffers by irony-mode's function
          (defun my:irony-mode-hook()
            (define-key irony-mode-map [remap completion-at-point]
              'irony-completion-at-point-async)
            (define-key irony-mode-map [remap complete-symbol]
              'irony-completion-at-point-async))
          (add-hook 'irony-mode-hook 'my:irony-mode-hook)
          (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))
  :ensure t)


;; -----------------------------------------------------------------------------
;; load my files .el
;; -----------------------------------------------------------------------------

(add-to-list 'load-path "~/.emacs.d/my_load_el")
;; (require 'myprojects)
