module PictureOrganizer
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
			#Prints out text for each file listed in the array.
			@foundfiles.each { |x| puts "#{x}" }
		end

		def return_files
			#Returns the array created by FileFinder
			find_files
			@foundfiles
		end
	end
end