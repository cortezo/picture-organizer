module PictureOrganizer
	class DateFolderCreator

		def initialize(dates_array, folder)
			@dates_array = dates_array
			@folder = folder
		end

		def create_dates_folders
			#creates a folder for eac
			@dates_array.each do |x|
				newfolder = @folder + '/' + x
				Dir.mkdir(newfolder)
			end
		end
	end
end