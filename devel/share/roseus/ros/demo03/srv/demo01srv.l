;; Auto-generated. Do not edit!


(when (boundp 'demo03::demo01srv)
  (if (not (find-package "DEMO03"))
    (make-package "DEMO03"))
  (shadow 'demo01srv (find-package "DEMO03")))
(unless (find-package "DEMO03::DEMO01SRV")
  (make-package "DEMO03::DEMO01SRV"))
(unless (find-package "DEMO03::DEMO01SRVREQUEST")
  (make-package "DEMO03::DEMO01SRVREQUEST"))
(unless (find-package "DEMO03::DEMO01SRVRESPONSE")
  (make-package "DEMO03::DEMO01SRVRESPONSE"))

(in-package "ROS")





(defclass demo03::demo01srvRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod demo03::demo01srvRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo03::demo01srvResponse
  :super ros::object
  :slots (_sum ))

(defmethod demo03::demo01srvResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass demo03::demo01srv
  :super ros::object
  :slots ())

(setf (get demo03::demo01srv :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get demo03::demo01srv :datatype-) "demo03/demo01srv")
(setf (get demo03::demo01srv :request) demo03::demo01srvRequest)
(setf (get demo03::demo01srv :response) demo03::demo01srvResponse)

(defmethod demo03::demo01srvRequest
  (:response () (instance demo03::demo01srvResponse :init)))

(setf (get demo03::demo01srvRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get demo03::demo01srvRequest :datatype-) "demo03/demo01srvRequest")
(setf (get demo03::demo01srvRequest :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")

(setf (get demo03::demo01srvResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get demo03::demo01srvResponse :datatype-) "demo03/demo01srvResponse")
(setf (get demo03::demo01srvResponse :definition-)
      "# 客户端请求时发送的两个数字
int32 num1
int32 num2
---
# 服务器响应发送的数据
int32 sum

")



(provide :demo03/demo01srv "4781436a0c2affec8025955a6041e481")


