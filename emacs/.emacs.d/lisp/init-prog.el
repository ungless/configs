;;; init-prog.el --- programming configurations      -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:

;; e.g. display “lambda” as “λ”
(use-package prog-mode
  :ensure nil
  :hook ((after-init . global-prettify-symbols-mode)
         (emacs-lisp-mode . (lambda () (push '("<=" . ?≤) prettify-symbols-alist)))))

;; Jump to definition via `ag'/`rg'/`grep'
(use-package dumb-jump
  :functions dumb-jump-hydra/body
  :bind (("M-g o" . dumb-jump-go-other-window)
         ("M-g j" . dumb-jump-go)
         ("M-g i" . dumb-jump-go-prompt)
         ("M-g x" . dumb-jump-go-prefer-external)
         ("M-g z" . dumb-jump-go-prefer-external-other-window))
  :hook (after-init . dumb-jump-mode)
  :config
  (setq dumb-jump-prefer-searcher 'rg)
  (with-eval-after-load 'ivy
    (setq dumb-jump-selector 'ivy))

  (with-eval-after-load 'hydra
    (defhydra dumb-jump-hydra (:color blue :columns 3)
      "Dumb Jump"
      ("j" dumb-jump-go "Go")
      ("o" dumb-jump-go-other-window "Other window")
      ("e" dumb-jump-go-prefer-external "Go external")
      ("x" dumb-jump-go-prefer-external-other-window "Go external other window")
      ("i" dumb-jump-go-prompt "Prompt")
      ("l" dumb-jump-quick-look "Quick look")
      ("b" dumb-jump-back "Back"))
    (bind-key "C-M-j" #'dumb-jump-hydra/body dumb-jump-mode-map)))

(use-package rmsbolt)

(use-package fish-mode
  :hook (fish-mode . (lambda ()
                       (add-hook 'before-save-hook
                                 #'fish_indent-before-save))))

(provide 'init-prog)
;;; init-prog.el ends here
