;;; init-utils.el --- utils in configuration         -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:
;; Display available keybindings in popup
(use-package which-key
  :diminish which-key-mode
  :bind (:map help-map ("C-h" . which-key-C-h-dispatch))
  :hook (after-init . which-key-mode))

(use-package wgrep
  :init
  (setq wgrep-auto-save-buffer t)
  (setq wgrep-change-readonly-file t))

(use-package ag
  :defines projectile-command-map
  :init
  (with-eval-after-load 'projectile
    (bind-key "s S" #'ag-project projectile-command-map))
  :config
  (setq ag-highlight-search t)
  (setq ag-reuse-buffers t)
  (use-package wgrep-ag))

(use-package rg
  :hook (after-init . rg-enable-default-bindings)
  :config
  (setq rg-group-result t)
  (setq rg-show-columns t))

(use-package try)

(provide 'init-utils)
;;; init-utils.el ends here
