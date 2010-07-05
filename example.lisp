(in-package :archive)

(defun list-archive-entries (pathname)
  (with-open-archive (archive pathname)
    (do-archive-entries (entry archive)
      (extract-entry archive entry))))