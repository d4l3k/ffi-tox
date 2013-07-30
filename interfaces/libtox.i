%module tox
%{
require 'ffi'
module Tox
        module Messenger
                extend FFI::Library
                ffi_lib File.absolute_path(File.join(__FILE__,"../../../ext/ffi-tox/libtox.so"))
                uint16_t = :uint16
                uint32_t = :uint32
%}

/* Parse the header file to generate wrappers */
%include "../ProjectTox-Core/core/Messenger.h"

%{
        end
end
%}
