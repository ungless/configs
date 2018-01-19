(package-initialize)

(require 'org-install)
(org-babel-load-file (expand-file-name "~/.emacs.d/max.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("bb5b50716c47003257c473ac8db55ae943f52cd81fddd91da40e1eaa4d01df21" "1f3113447a652b8436a9938bbac71ecaf022cc73ecd0d76182eb9713aa781f17" "4bfced46dcfc40c45b076a1758ca106a947b1b6a6ff79a3281f3accacfb3243c" "06ffa2bf4e891580bfe6a5ce68d0909ed9c4278e5234ede6b3ba459ef35d9a1b" "b34636117b62837b3c0c149260dfebe12c5dad3d1177a758bb41c4b15259ed7e" default)))
 '(package-selected-packages
   (quote
    (subatomic-theme zweilight-theme yaml-mode writeroom-mode writegood-mode white-sand-theme which-key web-mode wakatime-mode use-package typing try telephone-line sx sudo-edit spray smartparens scss-mode rainbow-mode rainbow-delimiters py-autopep8 projectile planet-theme org-bullets nyan-mode notmuch noctilux-theme nlinum-relative multiple-cursors molokai-theme marmalade magit go-errcheck go-eldoc go-autocomplete gnugo flycheck firecode-theme exec-path-from-shell emmet-mode elpy elfeed ein dumb-jump counsel company-statistics company-quickhelp company-jedi color-theme coffee-mode chess busybee-theme bongo autopair ace-window)))
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
