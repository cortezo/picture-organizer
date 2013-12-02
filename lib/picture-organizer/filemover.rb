require 'fileutils'
require 'exifr'

module PictureOrganizer
	class FileMover

		def initialize(datesarray, filearray, folder)
			@datesarray = datesarray
			@filearray = filearray
			@folder = folder
		end

		def move_files
			@filearray.each do |x|
				picture = @folder + '/' + x
				dateexif = EXIFR::JPEG.new(picture).date_time
				date_taken = dateexif.to_s[0,10]

				original_location = @folder + '/' + x
				new_location = @folder + '/' + date_taken + '/' + x

				FileUtils.mv(original_location, new_location)

				puts "#{x}  --->  #{new_location}"
			end
		end
	end
end