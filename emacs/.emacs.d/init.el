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
(put 'dired-find-alternate-file 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-show-numbers t)
 '(delete-by-moving-to-trash t)
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
	(helm-lsp which-key vterm-toggle use-package undo-tree try switch-window solaire-mode restart-emacs rainbow-delimiters origami org-pdftools org-gcal org-download org-bullets nov multiple-cursors mu4e-alert magit lsp-ui key-chord ibuffer-projectile hydra hungry-delete helm-swoop helm-projectile helm-eww helm-ag git-timemachine git-gutter flycheck expand-region exec-path-from-shell doom-themes doom-modeline dired-subtree company-lsp color-theme-sanityinc-solarized buffer-flip autothemer aggressive-indent ag ace-window ace-link)))
 '(undo-tree-visualizer-diff t)
 '(undo-tree-visualizer-timestamps t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
