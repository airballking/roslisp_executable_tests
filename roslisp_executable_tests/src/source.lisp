(in-package :roslisp-executable-tests)

(defun talker ()
  "Announces the current time at 1Hz over a topic."
  (with-ros-node ("talker" :spin t)
    (let ((talker (advertise "/chatter" "std_msgs/String")))
      (loop do
        (publish
         talker
         (make-msg
          "std_msgs/String"
          :data
          (concatenate 'string "It is " (write-to-string (ros-time)))))
        (sleep 1.0)))))
                                  
