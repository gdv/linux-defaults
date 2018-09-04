(defun ld-query-replace-whole-buffer ()
  "Run query-replace for an entire buffer. By default,
query-replace just runs from the current point to the end of the
buffer. This command starts it from the beginning of the buffer,
then restores point afterwards."
  (interactive "*")
  (save-excursion
    (goto-char (point-min))))
