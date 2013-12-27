
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent 4)))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (Maluchi)))
 '(custom-safe-themes (quote ("3fb5325f8d9d08b3fb226fe687e7dd6fdf217906b9c41cb80543c05860911200" "e206985432c0a7f0740a325715f3e7de6c6639aee15ba7b3364451715e4bd91c" "9337b20b6ae1080c64daf5dc3afeba85a059adc12496e6f8195f8501fc67e8ab" "42f5257dbb95f8fe63664a18c563f1ee0ff61d9c8b68d38f1cc246dfd5f18494" "b72fc5903ea5dfefea8f260e0015ed20bbfda91ff1c77dcfb3a3bf19c44e5e8b" "93254a4d654f8e170d6c37c1737fcd5602af6cbf9ee4b2d6328619f6e77ce968" "cb8fdebf4aa0faa75d57534dba4444d45e65fd98a86cbe2b13fdc19eaa538772" "d6478ec7d5565a77c0458f0fd026058fd603326df48f3101d41e6824343a443e" default))))
(custom-set-faces

 ;; cambio de fuentes para Linux
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2e3436" :foreground "#eeeeec" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "Monospace")))))
 (setq-default c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)


;;Carga de php-mode
(add-to-list 'load-path "~/emacs-modes/php-mode-master/")
(require 'php-mode)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))


;;el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
      "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

;;Python Auto-Completion
;;(add-hook 'python-mode-hook 'jedi:setup)

;;Configuraciones para Mac OS X
(when (eq system-type 'darwin)
      ;; default Latin font (e.g. Consolas)
      (set-face-attribute 'default nil :family "Monaco")
      ;; default font size (point * 12)
      ;;
      ;; WARNING!  Depending on the default font,
      ;; if the size is not supported very well, the frame will be clipped
      ;; so that the beginning of the buffer may not be visible correctly. 
      (set-face-attribute 'default nil :height 120)
      ;; use specific font for Korean charset.
      ;; if you want to use different font size for specific charset,
      ;; add :size POINT-SIZE in the font-spec.
      (set-fontset-font t 'hangul (font-spec :name "NanumGothicCoding"))
      ;; you may want to add different for other charset in this way.
      )
