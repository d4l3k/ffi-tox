Gem::Specification.new do |s|
	s.name		= 'ffi-tox'
	s.version	= '0.1.2'
	s.date		= '2013-08-01'
	s.summary	= "Tox bindings"
	s.description	= "Ruby FFI bindings to Tox"
	s.authors	= ["Tristan Rice"]
	s.email		= 'rice@outerearth.net'
	s.license	= "Simplified BSD"
	s.files		= ["lib/ffi-tox.rb", 
				"lib/ffi-tox/libtox.rb",
				"interfaces/libtox.i"
				] +
				Dir.glob('ProjectTox-Core/*') +
				Dir.glob('ProjectTox-Core/*/*')
	s.require_paths = ["lib"]
	s.extensions = ['ext/ffi-tox/extconf.rb']
	s.homepage	= 'http://github.com/d4l3k/ffi-tox'
	s.add_dependency 'ffi', '>= 1.9.0'
	s.add_dependency 'ffi-swig-generator', '>= 0.3.2'
end
