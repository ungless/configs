;;; init-flycheck.el --- flycheck configuration      -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:
(use-package flycheck
  :diminish flycheck-mode
  :hook (after-init . global-flycheck-mode)
  :config
  (setq flycheck-indication-mode 'left-fringe)
  (setq flycheck-emacs-lisp-load-path 'inherit)

  ;; Only check while saving and opening files
  (setq flycheck-check-syntax-automatically '(save mode-enabled))

  ;; Display Flycheck errors in GUI tooltips
  (if (display-graphic-p)
      (use-package flycheck-pos-tip
        :hook (global-flycheck-mode . flycheck-pos-tip-mode)
        :config (setq flycheck-pos-tip-timeout 30))
    (use-package flycheck-popup-tip
      :hook (global-flycheck-mode . flycheck-popup-tip-mode)))

  ;; Jump to and fix syntax errors via `avy'
  (use-package avy-flycheck
    :hook (global-flycheck-mode . avy-flycheck-setup))
  (use-package flycheck-color-mode-line
    :hook (global-flycheck-mode . flycheck-color-mode-line-mode)))


(provide 'init-flycheck)
;;; init-flycheck.el ends here