require_relative '..\lib\picture-organizer\filefinder'
require_relative '..\lib\picture-organizer\datearraycreator'
require_relative '..\lib\picture-organizer\datefoldercreator'
require_relative '..\lib\picture-organizer\filemover'

puts "Please enter a folder to process, using c:/folder1/folder2 format:\n"
folder = gets.chomp

puts "\nFolder = #{folder}"

files = PictureOrganizer::FileFinder.new(folder)
filearray = files.return_files

puts "Printing filearray"
filearray.each { |x| puts x}

puts "\nAbout to launch DateArrayCreator"

datesarraycreator = PictureOrganizer::DateArrayCreator.new(filearray, folder)
datesarray = datesarraycreator.return_dates_array

datesarray.each { |x| puts x }

puts "\nAbout to launch DateFolderCreator"
datefoldercreator = PictureOrganizer::DateFolderCreator.new(datesarray, folder)
datefoldercreator.create_dates_folders

puts "\nAbout to luanch FileMover"
filemover = PictureOrganizer::FileMover.new(datesarray, filearray, folder)
filemover.move_files