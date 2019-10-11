;; (setq package-enable-at-startup nil)
;; (unless (and (display-graphic-p) (eq system-type 'darwin)) (menu-bar-mode -1))
;; (and (bound-and-true-p tool-bar-mode) (tool-bar-mode -1))
;; (and (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; (defvar default-file-name-handler-alist file-name-handler-alist)
;; (setq file-name-handler-alist nil)
;; (setq gc-cons-threshold 80000000)
;; (add-hook 'emacs-startup-hook
;;           (lambda ()
;;             "Restore defalut values after init."
;;             (setq file-name-handler-alist default-file-name-handler-alist)
;;             (setq gc-cons-threshold 800000)
;;             (add-hook 'focus-out-hook 'garbage-collect)))

;; ;; Load path
;; (setq user-emacs-directory "~/.emacs.d/")
;; (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; (setq custom-file (locate-user-emacs-file "custom.el"))
;; (load custom-file 'no-error 'no-message)

;; Packages
;; (package-initialize)
;; (require 'init-package)

;; ;; Preferences
;; (require 'init-basic)
;; (require 'init-funcs)

;; (require 'init-ui)
;; (require 'init-edit)
;; (require 'init-ivy)
;; (require 'init-company)
;; (require 'init-yasnippet)

;; (require 'init-eshell)

;; (require 'init-org)
;; (require 'init-utils)

;; ;; Programming

;; (require 'init-prog)
;; (require 'init-vcs)
;; (require 'init-flycheck)
;; (require 'init-web)


(package-initialize)

(require 'org-install)
(org-babel-load-file (expand-file-name "~/.emacs.d/max.org"))

