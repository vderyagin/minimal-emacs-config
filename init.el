;;; minimal configuration file for emacs as system default editor

(fset 'yes-or-no-p 'y-or-n-p)

(menu-bar-mode -1)
(tool-bar-mode -1)
(mouse-wheel-mode -1)
(mouse-sel-mode -1)

(setq inhibit-startup-screen t
      initial-scratch-message ";; *scratch*\n\n")

(setq backup-inhibited t
      auto-save-default nil)

(setq echo-keystrokes 0.4)

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

(require 'ido)
(ido-mode t)
(ido-everywhere t)
(setq ido-create-new-buffer 'always
      ido-default-buffer-method 'selected-window
      ido-case-fold t
      ido-enable-last-directory-history nil
      ido-use-filename-at-point nil
      ido-use-url-at-pointt nil
      ido-enable-flex-matching t
      ido-max-prospects 15
      ido-confirm-unique-completion t
      ido-decorations '("\n-> " "" "\n   " "\n   ..." "[" "]"
                        " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))

(define-key global-map (kbd "M-g") 'goto-line)
(define-key global-map (kbd "M-?") 'hippie-expand)

(define-key global-map (kbd "C-<f5>")
  (lambda ()
    (interactive)
    (let ((content initial-scratch-message)
          (buf "*scratch*"))
      (when (get-buffer buf)
        (setq content ""))
      (switch-to-buffer buf)
      (insert content))))

;; window switching
(define-key global-map (kbd "C-<tab>")
  (lambda () (interactive) (select-window (next-window))))
(define-key global-map (kbd "C-S-<iso-lefttab>")
  (lambda () (interactive) (select-window (previous-window))))

;; window resizing
(define-key global-map (kbd "S-C-<left>") 'shrink-window-horizontally)
(define-key global-map (kbd "S-C-<right>") 'enlarge-window-horizontally)
(define-key global-map (kbd "S-C-<down>") 'shrink-window)
(define-key global-map (kbd "S-C-<up>") 'enlarge-window)

;; Local Variables:
;; no-byte-compile: t
;; End:
