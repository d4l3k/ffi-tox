
task :generate do
	`swig -Wall -xml interfaces/libtox.i`
	`bin/ffi-gen interfaces/libtox_wrap.xml lib/ffi-tox/libtox.rb`
	`rm interfaces/libtox_wrap.xml`
end
