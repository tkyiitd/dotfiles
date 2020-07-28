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

(setq vc-follow-symlinks t)
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-directory "~/org")
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
   '(sml-mode modus-vivendi-theme peep-dired which-key vterm-toggle use-package undo-tree try restart-emacs rainbow-delimiters org-pdftools org-gcal org-bullets nov multiple-cursors mu4e-alert magit lsp-ui key-chord ibuffer-projectile hydra hungry-delete helm-swoop helm-projectile helm-lsp helm-eww helm-ag git-timemachine git-gutter flycheck expand-region exec-path-from-shell doom-themes doom-modeline dired-subtree company color-theme-sanityinc-solarized buffer-flip ace-window ace-link)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
