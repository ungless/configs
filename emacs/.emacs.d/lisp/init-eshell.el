;;; init-eshell.el --- eshell configuration          -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>


;;; Code:
;; Emacs command shell
(use-package eshell
  :ensure nil
  :defines (compilation-last-buffer eshell-prompt-function)
  :commands (eshell/alias
             eshell-send-input eshell-flatten-list
             eshell-interactive-output-p eshell-parse-command)
  :hook (eshell-mode . (lambda ()
                         (bind-key "C-l" 'eshell/clear eshell-mode-map)))
  :preface
  (defun eshell/clear ()
    "Clear the eshell buffer."
    (interactive)
    (let ((inhibit-read-only t))
      (erase-buffer)
      (eshell-send-input)))

  (defun eshell/ec (&rest args)
    "Compile a file (ARGS) in Emacs.  Use `compile' to do background make."
    (if (eshell-interactive-output-p)
        (let ((compilation-process-setup-function
               (list 'lambda nil
                     (list 'setq 'process-environment
                           (list 'quote (eshell-copy-environment))))))
          (compile (eshell-flatten-and-stringify args))
          (pop-to-buffer compilation-last-buffer))
      (throw 'eshell-replace-command
             (let ((l (eshell-stringify-list (eshell-flatten-list args))))
               (eshell-parse-command (car l) (cdr l))))))
  (put 'eshell/ec 'eshell-no-numeric-conversions t)

  (defalias 'eshell/more 'eshell/less)
  :config
  ;;  Display extra information for prompt
  (use-package eshell-prompt-extras
    :after esh-opt
    :defines eshell-highlight-prompt
    :commands (epe-theme-lambda epe-theme-dakrone epe-theme-pipeline)
    :init (setq eshell-highlight-prompt nil
                eshell-prompt-function 'epe-theme-lambda))

  ;; Fish-like history autosuggestions
  (use-package esh-autosuggest
    :defines ivy-display-functions-alist
    :bind (:map eshell-mode-map
                ([remap eshell-pcomplete] . completion-at-point))
    :hook (eshell-mode . esh-autosuggest-mode)
    :config
    (with-eval-after-load 'ivy
      (defun setup-eshell-ivy-completion ()
        (setq-local ivy-display-functions-alist
                    (remq (assoc 'ivy-completion-in-region ivy-display-functions-alist)
                          ivy-display-functions-alist)))
      (add-hook 'eshell-mode-hook #'setup-eshell-ivy-completion)))

  ;; Eldoc support
  (use-package esh-help
    :init (setup-esh-help-eldoc))

  ;; `cd' to frequent directory in eshell
  (use-package eshell-z
    :hook (eshell-mode
           .
           (lambda () (require 'eshell-z)))))


(provide 'init-eshell)
;;; init-eshell.el ends here
