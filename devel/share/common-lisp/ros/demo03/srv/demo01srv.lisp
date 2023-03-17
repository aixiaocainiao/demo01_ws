; Auto-generated. Do not edit!


(cl:in-package demo03-srv)


;//! \htmlinclude demo01srv-request.msg.html

(cl:defclass <demo01srv-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass demo01srv-request (<demo01srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demo01srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demo01srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo03-srv:<demo01srv-request> is deprecated: use demo03-srv:demo01srv-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <demo01srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo03-srv:num1-val is deprecated.  Use demo03-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <demo01srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo03-srv:num2-val is deprecated.  Use demo03-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demo01srv-request>) ostream)
  "Serializes a message object of type '<demo01srv-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demo01srv-request>) istream)
  "Deserializes a message object of type '<demo01srv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demo01srv-request>)))
  "Returns string type for a service object of type '<demo01srv-request>"
  "demo03/demo01srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demo01srv-request)))
  "Returns string type for a service object of type 'demo01srv-request"
  "demo03/demo01srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demo01srv-request>)))
  "Returns md5sum for a message object of type '<demo01srv-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demo01srv-request)))
  "Returns md5sum for a message object of type 'demo01srv-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demo01srv-request>)))
  "Returns full string definition for message of type '<demo01srv-request>"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demo01srv-request)))
  "Returns full string definition for message of type 'demo01srv-request"
  (cl:format cl:nil "# 客户端请求时发送的两个数字~%int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demo01srv-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demo01srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'demo01srv-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude demo01srv-response.msg.html

(cl:defclass <demo01srv-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass demo01srv-response (<demo01srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demo01srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demo01srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name demo03-srv:<demo01srv-response> is deprecated: use demo03-srv:demo01srv-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <demo01srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader demo03-srv:sum-val is deprecated.  Use demo03-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demo01srv-response>) ostream)
  "Serializes a message object of type '<demo01srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demo01srv-response>) istream)
  "Deserializes a message object of type '<demo01srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demo01srv-response>)))
  "Returns string type for a service object of type '<demo01srv-response>"
  "demo03/demo01srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demo01srv-response)))
  "Returns string type for a service object of type 'demo01srv-response"
  "demo03/demo01srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demo01srv-response>)))
  "Returns md5sum for a message object of type '<demo01srv-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demo01srv-response)))
  "Returns md5sum for a message object of type 'demo01srv-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demo01srv-response>)))
  "Returns full string definition for message of type '<demo01srv-response>"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demo01srv-response)))
  "Returns full string definition for message of type 'demo01srv-response"
  (cl:format cl:nil "# 服务器响应发送的数据~%int32 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demo01srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demo01srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'demo01srv-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'demo01srv)))
  'demo01srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'demo01srv)))
  'demo01srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demo01srv)))
  "Returns string type for a service object of type '<demo01srv>"
  "demo03/demo01srv")