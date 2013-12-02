Gem::Specification.new do |s|
	s.name 			= "picture-organizer"
	s.version 		= "1.0.0"
	s.author 		= "Victor W"
	s.email 		= "vwalldev@gmail.com"
	s.homepage 		= "http://nonenone.none.com"
	s.summary		= "Picture Organizer"
	s.description  	= File.read(File.join(File.dirname(__FILE__), 'README.md'))

	s.files         = Dir["{bin,lib}/**/*"] + %w(LICENSE README.md)
	s.executables   = [ 'picture-organizer' ]

	s.required_ruby_version = '>=1.9'
end