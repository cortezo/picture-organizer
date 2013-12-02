require 'exifr'

module PictureOrganizer
	class DateArrayCreator

		def initialize(array, folder)
			@filearray = array
			@folder = folder
			@datesarray = []
		end

		def find_dates
			@filearray.each do |x|
				#find each date that exists in files found in the array.
				picture = @folder + '/' + x
				puts "About to process #{picture}"
				dateexif = EXIFR::JPEG.new(picture).date_time
				date_taken = dateexif.to_s[0,10]

				#add only unique dates to dates array
				if @datesarray.include?(date_taken) == false
					@datesarray << date_taken
				end
			end
		end

		def return_dates_array
			#return an array of unique picture taken dates for JPGs in directory
			find_dates
			@datesarray
		end
	end
end

