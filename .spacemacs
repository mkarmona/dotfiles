;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     emacs-lisp
     git
     django
     markdown

     ;; restclient scratch buffer
     restclient

     ;; you have to install
     ;; pip install yapf jedi anaconda-mode
     ;; pip install jedi==0.8.1 json-rpc==1.8.1 service_factory==0.1.2
     ;; pip install autoflake
     ;; pip install flake8 pylint
     python
     go
     shell-scripts
     html
     yaml
     gtags
     javascript
     react
     lua
     java
     (c-c++ :variables
            c-c++-default-mode-for-headers 'c++-mode
            c-c++-enable-clang-support t)
     ;; org
     (shell :variables
            shell-default-height 30
            ;; shell-default-shell 'multi-term
            shell-default-term-shell "/bin/bash"
            shell-default-position 'bottom)
     ;; spell-checking
     ;;clojure
     (syntax-checking :variables
                      syntax-checking-enable-tooltips nil)

     (version-control :variables
                      version-control-diff-tool 'diff-hl
                      ;;version-control-diff-tool 'git-gutter
                      version-control-global-margin t)

     octave)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(llvm-mode
                                      dts-mode
                                      monokai-theme
                                      mvn
                                      realgud
                                      ac-octave
                                      ag
                                      with-editor
                                      toml-mode
                                      groovy-mode
                                      material-theme
                                      hlinum)
   ;; A list of packages and/or extensions that will not be install and loaded.

   ;; dotspacemacs-excluded-packages '(powerline)

   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         material
                         monokai
                         anti-zenburn)

   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Input"
                               :height 130
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toGgle-Transparency'. (default 90)
   dotspacemacs-active-transparency 100
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 100
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil

  )
)

(defun dotspacemacs/config ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
)

(defun dotspacemacs/user-init ()
 "Initialization function for user code.
 It is called immediately after `dotspacemacs/init'.  You are free to put any
 user code."
 (setq tramp-ssh-controlmaster-options
  "-o ControlMaster=auto -o ControlPath='tramp.%%C' -o ControlPersist=no")

 )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."

  ;; java eclim
  (setq eclim-eclipse-dirs "~/bin/eclipse"
        eclim-executable "~/bin/eclipse/eclim")

  ;; javascript beautify
  ;; you need to install
  ;; npm install -g tern
  ;; npm install -g js-beautify
  ;; npm install -g eslint babel-eslint eslint-plugin-react

  (setq-default js2-basic-offset 2
                js-indent-level 2
                line-spacing 0
                helm-display-header-line t
                backup-inhibited t
                auto-save-default nil
                projectile-enable-caching t
                powerline-default-separator nil
                )

  (setq eval-expression-debug-on-error t)

  (spacemacs/toggle-line-numbers-off)
  (spacemacs/toggle-golden-ratio-off)

  (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (hlinum-activate)
  (setq python-shell-interpreter 'python)
)

;; custom things using emacs Custom

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(cua-mode t nil (cua-base))
 '(default-input-method "spanish-postfix")
 '(diff-hl-margin-mode t)
 '(diff-hl-side (quote right))
 '(global-spacemacs-default-map-override-mode t)
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (racket-mode anzu highlight request xterm-color orgit git-gutter+ git-gutter bind-map auto-complete tern popup badwolf-theme projectile-speedbar gruvbox-theme avy company color-theme-sanityinc-tomorrow flatui-theme subatomic-theme go-mode projectile hydra diminish afternoon-theme borland-blue-theme spacegray-theme ujelly-theme darktooth-theme tangotango-theme dracula-theme noctilux-theme ample-theme soft-stone-theme white-sand-theme faff-theme helm-core yasnippet toml-mode smartparens powerline markdown-mode magit js2-mode helm haml-mode gitignore-mode git-commit flycheck auctex anaconda-mode evil package-build bind-key s dash spray evil-indent-textobject auto-dictionary evil-leader yaml-mode ws-butler window-numbering which-key web-mode web-beautify volatile-highlights vi-tilde-fringe use-package tagedit spacemacs-theme spaceline smooth-scrolling smeargle slim-mode shell-pop scss-mode sass-mode ruby-end restart-emacs rainbow-delimiters quelpa pyvenv pytest pyenv-mode popwin pony-mode pip-requirements persp-mode pcre2el paradox page-break-lines open-junk-file neotree mvn multi-term move-text monokai-theme mmm-mode material-theme markdown-toc magit-gitflow macrostep lorem-ipsum llvm-mode linum-relative leuven-theme less-css-mode json-mode js2-refactor js-doc jade-mode info+ indent-guide ido-vertical-mode hy-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio go-eldoc gitconfig-mode gitattributes-mode git-timemachine git-messenger git-gutter-fringe git-gutter-fringe+ gh-md flycheck-pos-tip flx-ido fish-mode fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-jumper evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-args evil-anzu eval-sexp-fu eshell-prompt-extras esh-help emmet-mode emacs-eclim elisp-slime-nav ein dts-mode disaster diff-hl define-word cython-mode company-web company-tern company-statistics company-quickhelp company-go company-c-headers company-auctex company-anaconda coffee-mode cmake-mode clean-aindent-mode clang-format buffer-move auto-yasnippet auto-highlight-symbol auto-compile anti-zenburn-theme alchemist aggressive-indent ag adaptive-wrap ace-window ace-link ace-jump-helm-line ac-octave ac-ispell)))
 '(powerline-default-separator nil)
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "unknown" :family "Input"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(dired-header ((t (:height 140 :weight bold))))
 '(helm-source-header ((t (:height 140 :weight bold))))
 '(info-title-1 ((t (:height 170))))
 '(info-title-2 ((t (:height 160))))
 '(info-title-3 ((t (:height 150))))
 '(info-title-4 ((t (:height 140))))
 '(linum ((t (:slant normal))))
 '(linum-highlight-face ((t (:inherit current-line :weight bold))))
 '(mode-line-buffer-id ((t (:inherit mode-line :weight bold))))
 '(variable-pitch ((t (:inherit default :height 120 :family "Input Sans Narrow")))))

;; show full path in minibuffer
(defun mcb/show-file-name ()
  "Show the full path file name in the minibuffer"
  (interactive)
  (message (buffer-file-name))
  (kill-new (file-truename buffer-file-name)))
