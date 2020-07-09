(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'org)
(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (govet jedi smooth-scrolling zweilight-theme zerodark-theme zenburn-theme yasnippet-snippets yaml-mode writeroom-mode writegood-mode white-sand-theme which-key wgrep-ag web-mode web-beautify wakatime-mode use-package undo-tree underwater-theme typing try telephone-line sx sudo-edit subatomic-theme spray spaceline-all-the-icons soothe-theme solarized-theme soft-stone-theme smex smeargle smartparens smart-region seti-theme scss-mode sass-mode rmsbolt rg rainbow-mode rainbow-delimiters railscasts-theme pyenv-mode py-autopep8 planet-theme pip-requirements pinyinlib php-mode paganini-theme org-tree-slide org-projectile org-preview-html org-fancy-priorities org-dashboard org-bullets ob-ipython ob-go nyan-mode notmuch noctilux-theme nlinum-relative neotree mwim monokai-theme molokai-theme moe-theme minimal-theme marmalade magit-popup magit lenlen-theme json-mode js2-refactor js-comint jazz-theme ivy-xref ivy-rich ivy-hydra impatient-mode iedit hydandata-light-theme hungry-delete hlinum helm-swoop helm-projectile helm-git-grep helm-ag go-errcheck go-eldoc go-autocomplete gnugo github-modern-theme git-timemachine git-messenger flyspell-correct-ivy flymake-go flycheck-pos-tip flycheck-popup-tip flycheck-color-mode-line flx fish-mode firecode-theme farmhouse-theme eziam-theme exec-path-from-shell eshell-z eshell-prompt-extras esh-help esh-autosuggest emmet-mode elpy ein dumb-jump diminish dashboard darktooth-theme danneskjold-theme css-eldoc counsel-world-clock counsel-tramp counsel-projectile counsel-dash counsel-css company-web company-tern company-statistics company-quickhelp company-jedi company-go comment-dwim-2 coffee-mode cobalt cnfonts chess busybee-theme bongo badwolf-theme avy-flycheck avk-emacs-themes autopair apropospriate-theme anzu amx aggressive-indent ag ace-window ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
