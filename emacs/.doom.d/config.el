;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Tarun Kumar Yadav"
      user-mail-address "tkyiitd@gmail.com")

(when (eq system-type 'darwin)
  (setq mac-option-key-is-meta nil)
  (setq mac-command-key-is-meta t)
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier nil)
  )

;; contents of the clipboard are stored in the kill ring and can
;; be retrieved from there (e.g. with M-y)
(setq save-interprogram-paste-before-kill t)

;; scroll half pages
(after! view
  (map! "C-v" #'View-scroll-half-page-forward)
  (map! "M-v" #'View-scroll-half-page-backward))

;; open window vertically
;; (setq split-height-threshold nil)
;; (setq split-width-threshold 0)

(setq auth-source-cache-expiry nil)

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Inconsolata" :size 18 :weight 'medium)
      doom-variable-pitch-font (font-spec :family "Inconsolata" :size 18))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(setq doom-theme 'doom-one
      org-directory "~/org"
      display-line-numbers-type nil

      company-idle-delay nil
      lsp-ui-sideline-enable nil
      lsp-enable-symbol-highlighting nil)

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu/mu4e/")
(use-package! mu4e
  :commands mu4e mu4e-compose-new
  :config
  ;;(setq! mu4e-maildir (expand-file-name "~/mail/tkyiitd"))
  (set-email-account! "tkyiitd"
                      '((mu4e-sent-folder       . "/[Gmail]/Sent Mail")
                        (mu4e-drafts-folder     . "/[Gmail]/Drafts")
                        (mu4e-trash-folder      . "/[Gmail]/Bin")
                        ;; (mu4e-refile-folder     . "/tkyiitd/[Gmail]/Archive")
                        (smtpmail-smtp-user     . "tkyiitd@gmail.com")
                        (user-mail-address      . "tkyiitd@gmail.com")    ;; only needed for mu < 1.4
                        (mu4e-compose-signature . "Tarun Kumar Yadav"))
                      t)
  (setq! mu4e-maildir-shortcuts
         '(("/Inbox"             . ?i)
           ("/[Gmail]/Sent Mail" . ?s)
           ("/[Gmail]/Bin"       . ?t)))
  )

(use-package! peep-dired
  :defer
  :after dired
  :config
  (setq peep-dired-cleanup-on-disable t)
  (setq peep-dired-cleanup-eagerly t)
  (setq peep-dired-enable-on-directories nil)
  (setq peep-dired-ignored-extensions
        '("mkv" "webm" "mp4" "mp3" "ogg" "iso"))
  :bind (:map dired-mode-map
         ("P" . peep-dired)))

(use-package! hungry-delete
  :config
  (global-hungry-delete-mode)
  )

(use-package! ace-window
  :config
  (global-set-key (kbd "M-o") 'ace-window)
  )
