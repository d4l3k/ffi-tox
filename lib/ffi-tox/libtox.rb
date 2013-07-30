
require 'ffi'
module Tox
        module Messenger
                extend FFI::Library
                ffi_lib File.absolute_path(File.join(__FILE__,"../../../ext/ffi-tox/libtox.so"))
                uint16_t = :uint16
                uint32_t = :uint32
  MAX_NAME_LENGTH = 128
  MAX_USERSTATUS_LENGTH = 128
  PACKET_ID_NICKNAME = 48
  PACKET_ID_USERSTATUS = 49
  PACKET_ID_MESSAGE = 64
  attach_function :m_addfriend, [ :pointer, :pointer, uint16_t ], :int
  attach_function :m_addfriend_norequest, [ :pointer ], :int
  attach_function :getfriend_id, [ :pointer ], :int
  attach_function :getclient_id, [ :int, :pointer ], :int
  attach_function :m_delfriend, [ :int ], :int
  attach_function :m_friendstatus, [ :int ], :int
  attach_function :m_sendmessage, [ :int, :pointer, uint32_t ], :int
  attach_function :setname, [ :pointer, uint16_t ], :int
  attach_function :getname, [ :int, :pointer ], :int
  attach_function :m_set_userstatus, [ :pointer, uint16_t ], :int
  attach_function :m_get_userstatus_size, [ :int ], :int
  attach_function :m_copy_userstatus, [ :int, :pointer, uint32_t ], :int
  attach_function :m_callback_friendrequest, [ callback([ :pointer, :pointer, uint16_t ], :void) ], :void
  attach_function :m_callback_friendmessage, [ callback([ :int, :pointer, uint16_t ], :void) ], :void
  attach_function :m_callback_namechange, [ callback([ :int, :pointer, uint16_t ], :void) ], :void
  attach_function :m_callback_userstatus, [ callback([ :int, :pointer, uint16_t ], :void) ], :void
  attach_function :initMessenger, [  ], :int
  attach_function :doMessenger, [  ], :void
  attach_function :Messenger_size, [  ], uint32_t
  attach_function :Messenger_save, [ :pointer ], :void
  attach_function :Messenger_load, [ :pointer, uint32_t ], :int

        end
end
