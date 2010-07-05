(in-package :archive)

(defun list-archive-entries (pathname)
  (with-open-archive (archive pathname)
    (do-archive-entries (entry archive)
      (setf (entry-pathname entry) (format nil "~A.extra" (name entry)))
      (format t "~A ~A~%" (name entry) (entry-pathname entry))
      (extract-entry archive entry))))