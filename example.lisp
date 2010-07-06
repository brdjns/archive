(in-package :archive)

(defun extract-archive-entries (pathname)
  (with-open-archive (archive pathname)
    (do-archive-entries (entry archive)
      (format t "extracting ~A~%" (name entry))
      (extract-entry archive entry))))

(defun list-archive-entries (pathname)
  (with-open-archive (archive pathname)
    (do-archive-entries (entry archive)
      (format t "~A~%" (name entry)))))

