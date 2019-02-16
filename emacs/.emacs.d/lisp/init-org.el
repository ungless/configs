;;; init-org.el --- org mode configuration           -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:

(use-package org
  :ensure nil
  :commands org-try-structure-completion
  :bind (("C-c b" . org-switchb))
  :hook ((org-mode . org-indent-mode)
         (org-indent-mode . (lambda() (diminish 'org-indent-mode))))
  :config
  ;; More fancy UI
  (use-package org-bullets
    :hook (org-mode . org-bullets-mode))

  
  (use-package org-fancy-priorities
    :diminish
    :defines org-fancy-priorities-list
    :hook (org-mode . org-fancy-priorities-mode)
    :config (setq org-fancy-priorities-list '("⚡" "⬆" "⬇" "☕")))

  ;; Babel
  (setq org-confirm-babel-evaluate nil)

  (defvar load-language-list '((emacs-lisp . t)
			       (perl . t)
			       (python . t)
			       (ruby . t)
			       (plantuml . t)))
  (use-package ob-go
    :init
    (if (executable-find "go")
	(cl-pushnew '(go . t) load-language-list)))
  (use-package ob-ipython
    :init
    (if (executable-find "jupyter")
	(cl-pushnew '(ipython . t) load-language-list)))

  (org-babel-do-load-languages 'org-babel-load-languages
			       load-language-list)

  ;; Preview
  (use-package org-preview-html
    :diminish org-preview-html-mode)

  ;; Presentation
  (use-package org-tree-slide
    :functions (org-display-inline-images org-remove-inline-images)
    :hook ((org-tree-slide-play . (lambda ()
				    (text-scale-set 4)
				    (org-display-inline-images)
				    (read-only-mode 1)))
	   (org-tree-slide-stop . (lambda ()
				    (text-scale-set 0)
				    (org-remove-inline-images)
				    (read-only-mode -1)))))
  ;; Visually summarize progress
  (use-package org-dashboard))

(provide 'init-org)
;;; init-org.el ends here
