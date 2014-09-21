ffi-tox
=======

This gem provides FFI bindings to Tox core. At the moment it only binds Messenger.h but that can easily be changed.

To clone use:
```sh
git clone --recursive <repo>
```

This makes it also clone the submodule.

Usage
====
```ruby
require 'ffi-tox'
```
It uses the same syntax as the standard tox core.


Development
====

To build the gem file run:
```sh
bundle
rake generate
```
