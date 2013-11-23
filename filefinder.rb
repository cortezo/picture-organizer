class FileFinder
	attr_reader :foundfiles

	def initialize
		@foundfiles = []
	end

	def find_files
		Dir.foreach("jpgs") do |x| 
			if x.include? ".JPG"
				@foundfiles << x
			end
		end
	end

	def print_files
		@foundfiles.each { |x| puts "#{x}" }
	end
end