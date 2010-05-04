#-linux (error "inotify(7) is present only on Linux.")

(include "sys/inotify.h" "limits.h")

(in-package #:inotify)

(constant (in-access "IN_ACCESS") :documentation "File was accessed.")
(constant (in-modify "IN_MODIFY") :documentation "File was modified.")
(constant (in-attrib "IN_ATTRIB") :documentation "Metadata changed.")
(constant (in-close-write "IN_CLOSE_WRITE")
          :documentation "Writtable file was closed.")
(constant (in-close-nowrite "IN_CLOSE_NOWRITE")
          :documentation "Unwrittable file closed.")
(constant (in-close "IN_CLOSE") :documentation "Close.")
(constant (in-open "IN_OPEN") :documentation "File was opened.")
(constant (in-moved-from "IN_MOVED_FROM")
          :documentation "File was moved from X.")
(constant (in-moved-to "IN_MOVED_TO") :documentation "File was moved to Y.")
(constant (in-move "IN_MOVE") :documentation "Moves.")
(constant (in-create "IN_CREATE") :documentation "Subfile was created.")
(constant (in-delete "IN_DELETE") :documentation "Subfile was deleted.")
(constant (in-delete-self "IN_DELETE_SELF") :documentation "Self was deleted.")
(constant (in-move-self "IN_MOVE_SELF") :documentation "Self was moved.")
(constant (in-unmount "IN_UNMOUNT") :documentation "Backing fs was unmounted.")
(constant (in-q-overflow "IN_Q_OVERFLOW")
          :documentation "Event queued overflowed.")
(constant (in-ignored "IN_IGNORED") :documentation "File was ignored.")
(constant (in-close "IN_CLOSE") :documentation "Close.")
(constant (in-move "IN_MOVE") :documentation "Moves.")
(constant (in-onlydir "IN_ONLYDIR")
          :documentation "Only watch the path if it is a directory.")
(constant (in-dont-follow "IN_DONT_FOLLOW")
          :documentation "Do not follow a sym link.")
(constant (in-mask-add "IN_MASK_ADD")
          :documentation "Add to the mask of an already existing watch.")
(constant (in-isdir "IN_ISDIR") :documentation "Event occurred against dir.")
(constant (in-oneshot "IN_ONESHOT") :documentation "Only send event once.")
(constant (in-all-events "IN_ALL_EVENTS"))


(ctype size-t "size_t")
(ctype ssize-t "ssize_t")

(define "EVENT_SIZE" "(sizeof(struct inotify_event) + NAME_MAX + 1)")
(constant (event-size "EVENT_SIZE"))
