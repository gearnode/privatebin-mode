;; -*- lexical-binding: t -*-

;; Author: Bryan Frimin <bryan@frimin.fr>
;; URL: https://github.com/gearnode/privatebin-mode
;; Version: 1.0.0

;; Copyright 2020 Bryan Frimin <bryan@frimin.fr>
;;
;; Permission to use, copy, modify, and/or distribute this software for any
;; purpose with or without fee is hereby granted, provided that the above
;; copyright notice and this permission notice appear in all copies.
;;
;; THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;; WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;; MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
;; SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;; WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;; ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
;; IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

(defun privatebin-mode/get-data ()
  (if (use-region-p)
      (buffer-substring-no-properties (region-beginning) (region-end))
    (buffer-substring-no-properties (point-min) (point-max))))

(defun privatebin-mode/exec ())

(defun privatebin-mode/create-paste ()
  "todo"
  (interactive)
  (message "region not active"))

(define-minor-mode privatebin-mode
  "Convert emacs buffer in privatebin paste"
  :lighter " privatebin"
  :global t
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "C-c C-p") 'privatebin-mode/create-paste)
            map))
