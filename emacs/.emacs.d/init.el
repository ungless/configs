;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e297f54d0dc0575a9271bb0b64dad2c05cff50b510a518f5144925f627bb5832" "a56a6bf2ecb2ce4fa79ba636d0a5cf81ad9320a988ec4e55441a16d66b0c10e0" "5d3e0746023fc5e246eb3e0e48c1ccb5ce0387fc4273896c6cf02ee349c2eba8" "4980e5ddaae985e4bae004280bd343721271ebb28f22b3e3b2427443e748cd3f" "e4859645a914c748b966a1fe53244ff9e043e00f21c5989c4a664d649838f6a3" "31992d4488dba5b28ddb0c16914bf5726dc41588c2b1c1a2fd16516ea92c1d8e" "50e9ef789d599d39a9ecb6e983757306ea19198d1a8f182be7fd3242b613f00e" "06ffa2bf4e891580bfe6a5ce68d0909ed9c4278e5234ede6b3ba459ef35d9a1b" "3448e3f5d01b39ce75962328a5310438e4a19e76e4b691c21c8e04ca318a5f62" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "0b6cb9b19138f9a859ad1b7f753958d8a36a464c6d10550119b2838cedf92171" "5acb6002127f5d212e2d31ba2ab5503df9cd1baa1200fbb5f57cc49f6da3056d" "01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" "a25c42c5e2a6a7a3b0331cad124c83406a71bc7e099b60c31dc28a1ff84e8c04" default)))
 '(global-hl-line-mode t)
 '(org-agenda-files (quote ("~/organizer.org")))
 '(package-selected-packages
   (quote
    (firecode-theme busybee which-key spaceline writeroom-mode emmet-mode web-mode wakatime-mode sudo-edit nlinum-relative elpy yas-snippet org-capture white-sand-theme material-theme evil exec-path-from-shell elfeed dumb-jump try counsel company-statistics company-quickhelp company ace-window use-package)))
 '(send-mail-function (quote smtpmail-send-it))
 '(wakatime-cli-path "/usr/bin/wakatime")
 '(wakatime-python-bin nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/maxinit.org"))
