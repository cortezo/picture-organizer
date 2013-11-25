require_relative 'filefinder'
require_relative 'datearraycreator'
require_relative 'datefoldercreator'

folder = File.dirname(__FILE__)
puts "\n Folder = #{folder}"

files = FileFinder.new(folder)
filearray = files.return_files

puts "Printing filearray"
filearray.each { |x| puts x}

puts "\nAbout to launch DateArrayCreator"

datesarraycreator = DateArrayCreator.new(filearray, folder)
datesarray = datesarraycreator.return_dates_array

datesarray.each { |x| puts x }

puts "\nAbout to launch DateFolderCreator"
datefoldercreator = DateFolderCreator.new(datesarray, folder)
datefoldercreator.create_dates_folders