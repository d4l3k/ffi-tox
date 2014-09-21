task :generate do
  system("swig -Wall -xml interfaces/libtox.i")
  system("bin/ffi-gen interfaces/libtox_wrap.xml lib/ffi-tox/libtox.rb")
  system("rm interfaces/libtox_wrap.xml")
  system("gem build ffi-tox.gemspec")
end
