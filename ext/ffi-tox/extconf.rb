require 'ffi-swig-generator'

cmake_file = '../../ProjectTox-Core/core/CMakeLists.txt'

cmake_list = File.read(cmake_file)

if not cmake_list.include? 'tox'
	cmake_list += "\nadd_library(tox SHARED ${core_sources})\ntarget_link_libraries(tox sodium)\ninstall()"
	File.write cmake_file, cmake_list
end

`cmake ../../ProjectTox-Core/core`

# Rubygems requires a make install rule.
make_file = "Makefile"
File.write(make_file, File.read(make_file)+"\ninstall:\n.PHONY : install\n")
