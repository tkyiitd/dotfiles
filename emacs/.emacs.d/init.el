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
 '(custom-safe-themes
   (quote
	("bf4b3dbc59b2b0873bd74ebf8f3a8c13d70dc3d36a4724b27edb1e427f047c1e" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "dc8ad8b5833ae06e373cc3d64be28e67e6c3d084ea5f0e9e77225b3badbec661" "e7ba99d0f4c93b9c5ca0a3f795c155fa29361927cadb99cfce301caf96055dfd" "23b564cfb74d784c73167d7de1b9a067bcca00719f81e46d09ee71a12ef7ee82" "5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "43cadc6254cf27ff544e044b4139a7d50cf44e107cffef255aa8c5943581f606" "cc8528fcff6ff85ed132ea83e457a58ae0a49168c93bd752a8c446c61fefcdb5" "bf387180109d222aee6bb089db48ed38403a1e330c9ec69fe1f52460a8936b66" "7d708f0168f54b90fc91692811263c995bebb9f68b8b7525d0e2200da9bc903c" "a92e9da0fab90cbec4af4a2035602208cebf3d071ea547157b2bfc5d9bd4d48d" "2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" "76bfa9318742342233d8b0b42e824130b3a50dcc732866ff8e47366aed69de11" "9b272154fb77a926f52f2756ed5872877ad8d73d018a426d44c6083d1ed972b1" "e2acbf379aa541e07373395b977a99c878c30f20c3761aac23e9223345526bcc" default)))
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
	(color-theme-sanityinc-solarized which-key vterm-toggle use-package undo-tree try switch-window solaire-mode restart-emacs rainbow-delimiters origami org-pdftools org-gcal org-download org-bullets nov multiple-cursors mu4e-alert magit key-chord ibuffer-projectile hydra hungry-delete helm-swoop helm-projectile helm-eww helm-ag git-timemachine git-gutter flycheck expand-region exec-path-from-shell doom-themes doom-modeline dired-subtree company buffer-flip autothemer aggressive-indent ag ace-window ace-link)))
 '(solaire-mode-remap-fringe t)
 '(undo-tree-visualizer-diff t)
 '(undo-tree-visualizer-timestamps t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
