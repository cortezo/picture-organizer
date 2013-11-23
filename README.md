picture-organizer
=================

Takes pictures placed in a directory and organizes them into new folders based on the date the picture was taken.

Outline

Basic functions
	Find files in a directory or choose directory to use
		Pick only .jpg files
	Create array of found files
	Split array based on date each file was created or picture was taken
	Create new arrays for each date of pictures
	Create new folder for each date represented, with specific naming syntax
		IF folder already exists, place files in that folder
	Move files based on each array from starting directory to date directories
		IF files already exist, do not move that file to the date folder and place it into an Unable To Move folder
			Maybe have multiple folders inside Unable To Move for different reasons that they weren't able to be moved
	
Classes
	FileFinder
	JpgArray
	ArrayDateSeparator
	FolderCreator
	File Mover
	Unable To Move
	