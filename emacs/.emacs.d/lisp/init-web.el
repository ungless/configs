;;; init-web.el --- web configuration                -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>


;;; Code:

(use-package css-mode
  :ensure nil
  :init (setq css-indent-offset 4))

;; SCSS mode
(use-package sass-mode
  :init
  (setq sass-compile-at-save nil))

;; CSS eldoc
(use-package css-eldoc
  :commands turn-on-css-eldoc
  :hook ((css-mode sass-mode) . turn-on-css-eldoc))

;; Rainbow Mode
(use-package rainbow-mode
  :hook ((css-mode sass-mode) . rainbow-mode))

;; JSON mode
(use-package json-mode)

;; JavaScript editing
(use-package js2-mode
  :defines flycheck-javascript-eslint-executable
  :mode (("\\.js\\'" . js2-mode)
         ("\\.jsx\\'" . js2-jsx-mode))
  :interpreter (("node" . js2-mode)
                ("node" . js2-jsx-mode))
  :hook ((js2-mode . js2-imenu-extras-mode)
         (js2-mode . js2-highlight-unused-variables-mode))
  :config
  (with-eval-after-load 'flycheck
    (if (or (executable-find "eslint_d")
            (executable-find "eslint")
            (executable-find "jshint"))
        (setq js2-mode-show-strict-warnings nil))
    (if (executable-find "eslint_d")
        ;; https://github.com/mantoni/eslint_d.js
        ;; # npm i -g eslint_d
        (setq flycheck-javascript-eslint-executable "eslint_d")))

  (use-package js2-refactor
    :diminish js2-refactor-mode
    :hook (js2-mode . js2-refactor-mode)
    :config (js2r-add-keybindings-with-prefix "C-c C-m")))

;; CoffeeScript Mode
(use-package coffee-mode
  :config (setq coffee-tab-width 2))

;; Web editing mode
(use-package web-mode
  :defines company-backends
  :mode "\\.\\(phtml\\|php|[gj]sp\\|as[cp]x\\|erb\\|djhtml\\|html?\\|hbs\\|ejs\\|jade\\|swig\\|tm?pl\\|vue\\)$"
  :config
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-css-indent-offset 4)
  (setq web-mode-code-indent-offset 4)

  ;; Complete for web,html,emmet,jade,slim modes
  (use-package company-web
    :after company
    :init (dolist (mode '(company-web-html company-web-jade company-web-slim)))))

;; Format HTML, CSS and JavaScript/JSON by js-beautify
;; Install # npm -g install js-beautify
(use-package web-beautify
  :init
  (with-eval-after-load 'js-mode
    (bind-key "C-c n" #'web-beautify-js js-mode-map))
  (with-eval-after-load 'js2-mode
    (bind-key "C-c n" #'web-beautify-js js2-mode-map))
  (with-eval-after-load 'json-mode
    (bind-key "C-c n" #'web-beautify-js json-mode-map))
  (with-eval-after-load 'web-mode
    (bind-key "C-c n" #'web-beautify-html web-mode-map))
  (with-eval-after-load 'sgml-mode
    (bind-key "C-c n" #'web-beautify-html html-mode-map))
  (with-eval-after-load 'css-mode
    (bind-key "C-c n" #'web-beautify-css css-mode-map))
  :config
  ;; Set indent size to 2
  (setq web-beautify-args '("-s" "4" "-f" "-")))

(use-package haml-mode)
(use-package php-mode)

(provide 'init-web)
;;; init-web.el ends here
