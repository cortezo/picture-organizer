class FileFinder
	attr_reader :foundfiles

	def initialize(folder)
		@foundfiles = []
		@folder = folder
	end

	def find_files
		Dir.foreach(@folder) do |x| 
			if x.include? ".JPG"
				@foundfiles << x
			end
		end
	end

	def print_files
		@foundfiles.each { |x| puts "#{x}" }
	end

	def return_files
		find_files
		@foundfiles
	end
end