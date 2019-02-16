;; init-ui.el --- Initialize ui configurations.	-*- lexical-binding: t -*-

;;; Code:
(setq frame-title-format
      '("Emacs - "
        (:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

;; Line Numbers
(use-package nlinum-relative
  :ensure t
  :config
  (setq nlinum-highlight-current-line 1)
  (setq nlinum-format " %d ")
  (setq nlinum-relative-redisplay-delay 0)
  (setq nlinum-relative-offset 0)
  :init
  (add-hook 'prog-mode-hook 'nlinum-relative-mode))

;; Modeline
(use-package telephone-line
  :ensure t

  :config
  (setq telephone-line-primary-left-separator 'telephone-line-identity-left
	telephone-line-secondary-left-separator 'telephone-line-identity-hollow-left
	telephone-line-primary-right-separator 'telephone-line-identity-right
	telephone-line-secondary-right-separator 'telephone-line-identity-hollow-right)
  (setq telephone-line-height 24
	telephone-line-evil-use-short-tag t))
	     :init
	     (telephone-line-mode 1)

;; Colour theme
(use-package monokai-theme
  :init (load-theme 'monokai t))

;; Fonts
(add-to-list 'default-frame-alist '(font . "Mononoki-11.5"))
(when (window-system)
  (set-default-font "Mononoki"))


;; Mouse & Smooth Scroll
;; Scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq scroll-step 1
      scroll-margin 0
      scroll-conservatively 100000)

;; Display Time
(use-package time
  :ensure nil
  :unless (display-graphic-p)
  :hook (after-init . display-time-mode)
  :init
  (setq display-time-24hr-format t)
  (setq display-time-day-and-date t))

;; Misc
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t)
(setq visible-bell t)
(size-indication-mode 1)
;; (blink-cursor-mode -1)
(setq track-eol t)                      ; Keep cursor at end of lines. Require line-move-visual is nil.
(setq line-move-visual nil)
(setq inhibit-compacting-font-caches t)

;; Don't use GTK+ tooltip
(when (boundp 'x-gtk-use-system-tooltips)
  (setq x-gtk-use-system-tooltips nil))


(provide 'init-ui)
;;; init-ui.el ends here
