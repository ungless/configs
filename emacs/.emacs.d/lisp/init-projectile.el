;;; init-projectile.el --- projectile configuration  -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:

(use-package projectile
  :bind (:map projectile-mode-map
              ("C-x t" . projectile-find-file)
              ("C-c p" . projectile-command-map))
  :hook (after-init . projectile-mode)
  :init
  (setq projectile-mode-line-prefix "")
  (setq projectile-sort-order 'recentf)
  (setq projectile-use-git-grep t)
  :config
  (projectile-update-mode-line))

(provide 'init-projectile)
;;; init-projectile.el ends here
