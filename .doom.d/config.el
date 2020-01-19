;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; refresh' after modifying this file!

;; These are used for a number of things, particularly for GPG configuration,
;; some email clients, file templates and snippets.
(setq user-full-name "Anthony Su"
      user-mail-address "tonyfloater@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "source code pro" :size 24))
(setq doom-big-font (font-spec :family "source code pro" :size 36))
(setq doom-themes-treemacs-enable-variable-pitch nil)
(setq +doom-dashboard-banner-file (concat doom-private-dir "/banner/banner-light.png"))
(global-set-key (kbd ",") #'(lambda () (interactive) (insert ", ")))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. These are the defaults.
(load! "/home/anthonysu/.doom.d/intellij-darcula-theme/idea-darkula-theme.el")
(setq doom-theme 'doom-spacegrey)

(setq centaur-tabs-set-bar 'over)
(setq centaur-tabs-height 40)
(setq treemacs-width 60)
(setq org-bullets-bullet-list '("#" "=" "+" "⁖" "-" "□" "■"))

(general-setq doom-modeline-height                   25
              doom-modeline-bar-width                3
              doom-modeline-buffer-file-name-style   'relative-from-project
              doom-modeline-icon                     t
              doom-modeline-major-mode-icon          t
              doom-modeline-major-mode-color-icon    t
              doom-modeline-buffer-state-icon        t
              doom-modeline-buffer-modification-icon t
              doom-modeline-minor-modes              t
              doom-modeline-enable-word-count        t
              doom-modeline-checker-simple-format    nil
              doom-modeline-vcs-max-length           12
              doom-modeline-persp-name               t
              doom-modeline-lsp                      t
              doom-modeline-github                   t
              doom-modeline-github-interval          (* 30 60)

              doom-modeline-env-version       t
              doom-modeline-env-enable-python t
              doom-modeline-env-enable-ruby   t
              doom-modeline-env-enable-perl   t
              doom-modeline-env-enable-go     t
              doom-modeline-env-enable-elixir t
              doom-modeline-env-enable-rust   t

              doom-modeline-env-python-executable "python"
              doom-modeline-env-ruby-executable   "ruby"
              doom-modeline-env-perl-executable   "perl"
              doom-modeline-env-go-executable     "go"
              doom-modeline-env-elixir-executable "iex"
              doom-modeline-env-rust-executable   "rustc"

              doom-modeline-mu4e        t
              doom-modeline-irc         t
              doom-modeline-irc-stylize 'identity)

;; If you intend to use org, it is recommended you change this!
(after! org
  (setq org-directory "~/org/")
  (setq org-agenda-files (list "~/Desktop/Agenda/Reading.org"))
  (setq org-todo-keywords '((sequence "TODO(t)" "INPROGRESS(i)" "WAITINT(w)"
                                      "|" "DONE(d)" "CANCELLED(c)"))
        org-todo-keyword-faces '(("TODO" :foreground "#7c7c75" :weight normal :underline t)
                                 ("WAITING" :foreground "#9f7efe" :weight normal :underline t)
                                 ("INPROGRESS" :foreground "#0098dd" :weight normal :underline t)
                                 ("DONE" :foreground "#50a14f" :weight normal :underline t)
                                 ("CANCELLED" :foreground "#ff6480" :weight normal :underline t))
        ))

(require 'rainbow-mode)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

;; If you want to change the style of line numbers, change this to `relative' or
;; `nil' to disable it:
(setq display-line-numbers-type nil)
(setq-default line-spacing 0.2)

(setq ccls-executable "/home/anthonysu/tcs-proj/ccls/Release/ccls")


(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', where Emacs
;;   looks when you load packages with `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
