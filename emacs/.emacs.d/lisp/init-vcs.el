;;; init-vcs.el --- versioning                       -*- lexical-binding: t; -*-

;; Copyright (C) 2018  Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;;; Code:

(use-package magit
  :bind (("C-x i" . magit-status)
         ("C-x M-g" . magit-dispatch-popup)
         ("C-c M-g" . magit-file-popup)))

;;; Pop up last commit information of current line
(use-package git-messenger
  :commands git-messenger:copy-message
  :bind (:map vc-prefix-map
              ("p" . git-messenger:popup-message)
              :map git-messenger-map
              ("m" . git-messenger:copy-message))
  :init
  ;; Use magit-show-commit for showing status/diff commands
  (setq git-messenger:use-magit-popup t))

;; Walk through git revisions of a file
(use-package git-timemachine
  :bind (:map vc-prefix-map
              ("t" . git-timemachine)))

;; Highlighting regions by last updated time
(use-package smeargle
  :bind (:map vc-prefix-map
              ("S" . smeargle)
              ("C" . smeargle-commits)
              ("R" . smeargle-clear)))


(provide 'init-vcs)
;;; init-vcs.el ends here
