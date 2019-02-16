;;; init-yasnippet.el --- yasnippet configuration    -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>
;; Keywords: wp, abbrev, abbrev, abbrev,

;;; Code:

(use-package yasnippet
  :diminish yas-minor-mode
  :hook (after-init . yas-global-mode)
  :config (use-package yasnippet-snippets))

(use-package hippie-expand
  :init (setq-default hippie-expand-try-functions-list
		      '(yas-expand emmet-expand-line)))

(global-set-key (kbd "C-<tab>") 'hippie-expand)
(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
