;;; max-theme.el --- max-theme
;; Copyright (C) 2018 by Max Ungless

;; Author: Max Ungless <maxungless@gmail.com>

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;; none

;;; Code:

(deftheme max
  "max theme")

(let ((class '((class color) (min-colors 89)))
      (fg1 "#1a0e0a")
      (fg2 "#b26e63")
      (fg3 "#b0bc98")
      (fg4 "#6b6b6c")
      (textbg "#e3d9cc")
      (bg1 "#faf1dd")
      (bg2 "#e7cfc0")
      (bg3 "#bfab9b")
      (bg4 "#eaebed")
      (bg5 "#44475a")
      (key2 "#0189cc")
      (key3 "#ff79c6")
      (type "#0a2463")
      (builtin "#587b7f")
      (keyword "#4b93b1")
      (const   "#a72608")
      (comment "#820263")
      (func    "#b88333")
      (str     "#337357")
      (var     "#bc8034")
      (warning "#ffb86c")
      (colour-1 "#5c374c")
      (colour-2 "#006989")
      (colour-3 "#ff8c61")
      (colour-4 "#ff7700")
      (colour-5 "#ce6a85")
      (colour-6 "#374a67")
      (colour-7 "#616283")
      (colour-8 "#cb9cf2")
      (colour-9 "#9472b1"))

  (custom-theme-set-faces
   'max
   ;; default
   `(cursor ((,class (:background ,str))))
   `(default ((((type nil)) (:background "#000000" :foreground ,fg1))
              (,class (:background ,bg1 :foreground ,fg1))))
   `(default-italic ((,class (:italic t))))
   `(ffap ((,class (:foreground ,fg4))))
   `(fringe ((,class (:background ,bg1 :foreground ,fg4))))
   `(highlight ((,class (:foreground ,fg3 :background ,bg2))))
   `(hl-line ((,class (:background ,bg2))))
   `(info-quoted-name ((,class (:foreground ,builtin))))
   `(info-string ((,class (:foreground ,str))))
   `(lazy-highlight ((,class (:foreground ,fg1 :background ,bg3))))
   `(link ((,class (:foreground ,const :underline t))))
   `(linum ((,class (:foreground ,fg4 :background ,bg1))))
   `(nlinum-relative-current-face ((,class (:bold t :foreground ,fg4 :background ,bg2))))
   `(minibuffer-prompt ((,class (:bold t :foreground ,keyword))))
   `(region ((,class (:background ,bg3 :foreground ,fg1))))
   `(show-paren-match-face ((,class (:background ,warning))))
   `(trailing-whitespace ((,class :foreground nil :background ,warning)))
   `(vertical-border ((,class (:foreground ,bg2))))
   `(warning ((,class (:foreground ,warning))))
   `(whitespace-trailing ((,class :inherit trailing-whitespace)))
   `(highlight-indentation-face ((,class :background ,textbg)))

    ;; syntax
   `(font-lock-builtin-face ((,class (:foreground ,builtin :background ,textbg))))
   `(font-lock-comment-face ((,class (:slant italic :foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,const :background ,textbg))))
   `(font-lock-doc-face ((,class (:foreground ,comment :background ,textbg))))
   `(font-lock-function-name-face ((,class (:foreground ,func :bold t))))
   `(font-lock-keyword-face ((,class (:bold ,class :foreground ,keyword :background ,textbg))))
   `(font-lock-negation-char-face ((,class (:foreground ,const :background ,textbg))))
   `(font-lock-reference-face ((,class (:foreground ,const :background ,textbg))))
   `(font-lock-string-face ((,class (:foreground ,str))))
   `(font-lock-type-face ((,class (:foreground ,type))))
   `(font-lock-variable-name-face ((,class (:foreground ,var :background ,textbg))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   ;; mode-line
   `(mode-line ((,class (:foreground ,fg1 :background ,fg3 :box (:color ,fg1 :line-width 1)))))
   `(mode-line-inactive ((,class (:foreground ,fg1 :background ,bg3 :box (:color ,fg1 :line-width 1)))))

   ;; ivy
   `(ivy-prompt-match ((,class (:background ,fg3))))
   `(ivy-current-match ((,class (:inherit ivy-prompt-match))))
   `(ivy-minibuffer-match-face-2 ((,class (:background ,colour-8))))
   `(ivy-minibuffer-match-face-3 ((,class (:background ,colour-4))))
   `(ivy-minibuffer-match-face-4 ((,class (:background ,colour-7))))
   `(ivy-subdir ((,class (:slant italic :bold t :foreground ,bg5))))

   ;; magit
   `(magit-branch ((,class (:foreground ,const :weight bold))))
   `(magit-diff-context-highlight ((,class (:background ,bg3 :foreground ,fg3))))
   `(magit-diff-file-header ((,class (:foreground ,fg2 :background ,bg3))))
   `(magit-diffstat-added ((,class (:foreground ,type))))
   `(magit-diffstat-removed ((,class (:foreground ,var))))
   `(magit-hash ((,class (:foreground ,fg4))))
   `(magit-hunk-heading ((,class (:background ,bg3))))
   `(magit-hunk-heading-highlight ((,class (:background ,bg3))))
   `(magit-item-highlight ((,class :background ,bg3)))
   `(magit-log-author ((,class (:foreground ,fg3))))
   `(magit-process-ng ((,class (:foreground ,warning :weight bold))))
   `(magit-process-ok ((,class (:foreground ,func :weight bold))))
   `(magit-section-heading ((,class (:foreground ,keyword :weight bold))))
   `(magit-section-highlight ((,class (:background ,bg2))))

   ;; org
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,colour-8))))
   `(org-agenda-done ((,class (:foreground ,colour-6))))
   `(org-agenda-structure ((,class (:foreground ,colour-3))))
   `(org-block ((,class (:foreground ,colour-5))))
   `(org-code ((,class (:foreground ,colour-7))))
   `(org-column ((,class (:background ,bg4))))
   `(org-column-title ((,class (:inherit org-column :weight bold :underline t))))
   `(org-date ((,class (:foreground ,colour-2 :underline t))))
   `(org-document-info ((,class (:foreground ,colour-8))))
   `(org-document-info-keyword ((,class (:foreground ,comment))))
   `(org-document-title ((,class (:weight bold :foreground ,colour-5 :height 1.44))))
   `(org-done ((,class (:foreground ,colour-6))))
   `(org-ellipsis ((,class (:foreground ,comment))))
   `(org-footnote ((,class (:foreground ,colour-8))))
   `(org-formula ((,class (:foreground ,colour-4))))
   `(org-headline-done ((,class (:foreground ,comment :bold nil :strike-through t))))
   `(org-hide ((,class (:foreground ,bg1 :background ,bg1))))
   `(org-level-1 ((,class (:inherit bold :foreground ,colour-1 :height 1.3))))
   `(org-level-2 ((,class (:inherit bold :foreground ,colour-2 :height 1.1))))
   `(org-level-3 ((,class (:bold nil :foreground ,colour-3 :height 1.0))))
   `(org-level-4 ((,class (:bold nil :foreground ,colour-4))))
   `(org-level-5 ((,class (:bold nil :foreground ,colour-5))))
   `(org-level-6 ((,class (:bold nil :foreground ,colour-6))))
   `(org-level-7 ((,class (:bold nil :foreground ,fg1))))
   `(org-level-8 ((,class (:bold nil :foreground ,fg1))))
   `(org-link ((,class (:foreground ,colour-2 :underline t))))
   `(org-priority ((,class (:foreground ,colour-2))))
   `(org-scheduled ((,class (:foreground ,colour-6))))
   `(org-scheduled-previously ((,class (:foreground ,colour-7))))
   `(org-scheduled-today ((,class (:foreground ,colour-6))))
   `(org-sexp-date ((,class (:foreground ,fg4))))
   `(org-special-keyword ((,class (:foreground ,colour-7))))
   `(org-table ((,class (:foreground ,colour-3))))
   `(org-tag ((,class (:foreground ,colour-4 :bold t :background ,bg2))))
   `(org-todo ((,class (:foreground ,colour-5 :bold t :background ,bg2))))
   `(org-upcoming-deadline ((,class (:foreground ,colour-7))))
   `(org-warning ((,class (:weight bold :foreground ,warning))))

   ;; company
   `(company-echo-common ((,class (:foreground ,fg1 :background ,bg1))))
   `(company-preview ((,class (:background ,bg3 :foreground ,key2))))
   `(company-preview-common ((,class (:foreground ,fg1 :foreground ,fg3))))
   `(company-preview-search ((,class (:foreground ,type :background ,bg1))))
   `(company-scrollbar-bg ((,class (:background ,bg3))))
   `(company-scrollbar-fg ((,class (:foreground ,keyword))))
   `(company-template-field ((,class (:inherit region))))
   `(company-tooltip ((,class (:foreground ,fg1 :background ,bg1 :bold t :box 1))))
   `(company-tooltip-annotation ((,class (:foreground ,const))))
   `(company-tooltip-common ((,class ( :foreground ,fg3))))
   `(company-tooltip-common-selection ((,class (:foreground ,fg3))))
   `(company-tooltip-mouse ((,class (:inherit highlight))))
   `(company-tooltip-selection ((,class (:background ,bg5 :foreground ,fg2))))

   ;; mu4e
   `(mu4e-cited-1-face ((,class (:foreground ,fg2))))
   `(mu4e-cited-7-face ((,class (:foreground ,fg3))))
   `(mu4e-header-marks-face ((,class (:foreground ,type))))
   `(mu4e-view-url-number-face ((,class (:foreground ,type))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class :foreground ,colour-1)))
   `(rainbow-delimiters-depth-2-face ((,class :foreground ,colour-2)))
   `(rainbow-delimiters-depth-3-face ((,class :foreground ,colour-3)))
   `(rainbow-delimiters-depth-4-face ((,class :foreground ,colour-4)))
   `(rainbow-delimiters-depth-5-face ((,class :foreground ,colour-5)))
   `(rainbow-delimiters-depth-6-face ((,class :foreground ,colour-6)))
   `(rainbow-delimiters-depth-7-face ((,class :foreground ,colour-7)))
   `(rainbow-delimiters-depth-8-face ((,class :foreground ,colour-8)))
   `(rainbow-delimiters-unmatched-face ((,class :foreground ,warning)))

   ;; web-mode
   `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
   `(web-mode-doctype-face ((,class (:inherit ,font-lock-comment-face))))
   `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
   `(web-mode-html-attr-name-face ((,class (:foreground ,type))))
   `(web-mode-html-attr-value-face ((,class (:inherit ,font-lock-string-face))))
   `(web-mode-html-tag-face ((,class (:foreground ,keyword :bold t))))
   `(web-mode-keyword-face ((,class (:inherit ,font-lock-keyword-face))))
   `(web-mode-string-face ((,class (:inherit ,font-lock-string-face))))
   `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
   `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))

   ;; flycheck
   `(flycheck-error ((,class (:underline (:style wave :color ,colour-5)))))

   ;; flyspell
   `(flyspell-incorrect ((,class (:underline (:style wave :color ,colour-5)))))
))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'max)

;;; max-theme.el ends here
