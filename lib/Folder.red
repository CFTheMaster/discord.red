Red [
	Title: "Show files and folders."
	Author: "computerfreaker"
	File: %Folder.red
]

dir: request-dir
files: read dir

show-file-or-folder: func [files [block!]] [
	foreach file files [
		print [form file "is" either dir? file ["folder"] ["file"]]
	]
]

show-file-or-folder files