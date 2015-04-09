;; Swap Alt with Cmd
(setq mac-option-key-is-meta nil
mac-command-key-is-meta t
mac-command-modifier 'meta
mac-option-modifier 'none)

;;Window size
(when window-system (set-frame-size (selected-frame) 100 50))

;;Shift for switching windows
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;Colour on grey background
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tsdh-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)

;;4 fucking tabs for c
(setq c-default-style "k&r"
      c-basic-offset 4
)

;;Supress startup
(setq inhibit-startup-message t)

;;Python Handy clean up
(defun pytidy-whole-buffer ()
  (interactive)
  (let ((a (point)))
    (shell-command-on-region (point-min) (point-max) "reindent" t)
    (goto-char a)))

(global-set-key (kbd "<f9>") 'pytidy-whole-buffer)

;;turn off bell
(setq visible-bell 1)

(load (expand-file-name "~/Dev/lisp/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "/usr/local/bin/sbcl")

;;Lisp command history
(global-set-key (kbd "<M-up>") 'slime-repl-backward-input)
(global-set-key (kbd "<M-down>") 'slime-repl-forward-input)

;; El-get

;; Standard el-get setup
;; (See also: https://github.com/dimitri/el-get#basic-setup)
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(el-get 'sync)

;; Standard Jedi.el setting
;; (setq jedi:server-command '("/Users/carthach/.emacs.d/el-get/jedi/jediepcserver.py"))
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (setq jedi:complete-on-dot t)

;;Replace text
;;(delete-selection-mode 1)
