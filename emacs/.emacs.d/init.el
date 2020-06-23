(require 'package)

(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives
	       '("melpa-stb" . "https://stable.melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package-ensure)
(setq use-package-always-ensure t)

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-show-numbers t)
 '(dired-clean-up-buffers-too t t)
 '(dired-dwim-target t)
 '(dired-listing-switches "-alh")
 '(dired-recursive-copies (quote always))
 '(dired-recursive-deletes (quote top))
 '(org-directory "~/org")
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
	(aggressive-indent org-pdftools git-gutter git-timemachine rainbow-delimiters dired dired-subtree ibuffer-projectile solaire-mode doom-modeline org-download which-key vterm-toggle use-package undo-tree switch-window restart-emacs pdf-tools origami org-gcal org-bullets nov multiple-cursors magit key-chord hydra hungry-delete helm-swoop helm-projectile helm-ag flycheck expand-region exec-path-from-shell doom-themes company buffer-flip autothemer ag ace-window)))
 '(solaire-mode-remap-fringe t)
 '(undo-tree-visualizer-diff t)
 '(undo-tree-visualizer-timestamps t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
