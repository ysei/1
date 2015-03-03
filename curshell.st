
(FileDirectory default entries do:
 [:each | Transcript cr; show: each printString])
(FileDirectory default entries do:
 [:each | Transcript cr; show: each printString])
(FileDirectory default entries do:
 [:each | each printString])


[[true] whileTrue:
	[Time now printString displayAt: 100@100.
	Processor yield.
	(Delay forMilliseconds: 3 atRandom) wait.]] fork.
process inspect.

 insideColor: Form white;
(Display pixelPerMillimeter * (20 @ 10)) rounded

http://aokilab.kyoto-su.ac.jp/documents/index-j.html
http://github.com/zoopster

"YAMAGUTIseisei"



	| t1 t2 t3 t4 |
	dir _ FileDirectory default.
	d2ir _ FileDirectory default.
	aFileList _ FileList new directory: dir.
	a2FileList _ FileList new directory: d2ir.


	t1 _ StandardSystemView new.
	t1 label: 'Curshell'.
	t2 _ PluggableListView on: aFileList	"self"
		list: #fileList
		selected: #fileListIndex
		changeSelected: #fileListIndex:
		menu: #fileListMenu:.

"	t2 controller: NoController new."
	t2 window: (0 @ 0 extent: 100 @ 68).
	t2 borderWidthLeft: 2 right: 0 top: 2 bottom: 2.
	t1 addSubView: t2.
	t3 _ PluggableListView on: a2FileList
		list: #fileList
		selected: #fileListIndex
		changeSelected: #fileListIndex:
		menu: #fileListMenu:.

	t3 window: (0 @ 0 extent: 100 @ 68).
	t3 borderWidth: 2.
	t1 addSubView: t3 toRightOf: t2 .
	t1 addSubView: t2.
	t4 _ DisplayTextView new model: 'Status window' asDisplayText.
	t4 window: (0 @ 0 extent: 200 @ 32).
	t4 borderWidth: 2.
	t1 addSubView: t4   below: t2.
	t1 controller open


	| t1 t2 aa bb t3 t4 |
aa := FileDirectory default entries .
bb := ''.
aa do:
 [:each | bb := bb , (String fromString: (each at: 1 ), ( each at: 2 ) , Character cr printString )].
	t1 _ StandardSystemView new.
	t1 label: 'Curshell'.
	t2 _ DisplayTextView new model: ('test string label' , bb) asDisplayText.
	t2 controller: NoController new.
	t2 window: (0 @ 0 extent: 100 @ 68).
	t2 borderWidthLeft: 2 right: 0 top: 2 bottom: 2.
	t1 addSubView: t2.
	t3 _ DisplayTextView new model: (bb) asDisplayText.
	t3 window: (0 @ 0 extent: 100 @ 68).
	t3 borderWidth: 2.
	t1 addSubView: t3 toRightOf: t2 .
	t1 addSubView: t2.
	t4 _ DisplayTextView new model: 'Status window' asDisplayText.
	t4 window: (0 @ 0 extent: 200 @ 32).
	t4 borderWidth: 2.
	t1 addSubView: t4   below: t2.
	t1 controller open


ST80-Pluggable Views


	| t1 t2 |
	t1 _ StandardSystemView new.
	t1 label: 'Text Editor'.
	t2 _ self new model: 'test string label' asDisplayText.
	t2 controller: NoController new.
	t2 window: (0 @ 0 extent: 100 @ 100).
	t2
		borderWidthLeft: 2
		right: 0
		top: 2
		bottom: 2.
	t1 addSubView: t2.
	t2 _ self new model: 'test string' asDisplayText.
	t2 window: (0 @ 0 extent: 100 @ 100).
	t2 borderWidth: 2.
	t1
		addSubView: t2
		align: t2 viewport topLeft
		with: t1 lastSubView viewport topRight.
	t1 controller open

	
aa := FileDirectory default entries .
bb := ''.
aa do:
 [:each | bb:= bb , (String fromString: (each at: 1 to: 2) , Character cr printString , '-----i------' )].
Transcript show: bb


aa := dir entries .
bb := ''.
aa do:
 [:each | bb := bb , (String fromString: (each at: 1 ), ( each at: 2 ) , Character cr printString )].












open
	"Open a view of an instance of me on the default directory."
	"FileList open"
	| dir aFileList topView volListView templateView fileListView fileContentsView underPane pHeight |
	Smalltalk isMorphic ifTrue: [^ self openAsMorph].

	dir _ FileDirectory default.
	aFileList _ self new directory: dir.
	topView _ StandardSystemView new.
	topView
		model: aFileList;
		label: dir pathName;
		minimumSize: 200@200.
	topView borderWidth: 1.

	volListView _ PluggableListView on: aFileList
		list: #volumeList
		selected: #volumeListIndex
		changeSelected: #volumeListIndex:
		menu: #volumeMenu:.
	volListView autoDeselect: false.
	volListView window: (0@0 extent: 80@45).
	topView addSubView: volListView.

	templateView _ PluggableTextView on: aFileList
		text: #pattern
		accept: #pattern:.
	templateView askBeforeDiscardingEdits: false.
	templateView window: (0@0 extent: 80@15).
	topView addSubView: templateView below: volListView.

	Preferences optionalButtons
		ifTrue: [
			underPane _ aFileList optionalButtonView.
			underPane isNil
				ifTrue: [pHeight _ 60]
				ifFalse: [
					topView addSubView: underPane toRightOf: volListView.
					pHeight _ 60 - aFileList optionalButtonHeight]]
		ifFalse: [
			underPane _ nil.
			pHeight _ 60].

	fileListView _ PluggableListView on: aFileList
		list: #fileList
		selected: #fileListIndex
		changeSelected: #fileListIndex:
		menu: #fileListMenu:.
	fileListView window: (0@0 extent: 120@pHeight).
	underPane isNil
		ifTrue: [topView addSubView: fileListView toRightOf: volListView]
		ifFalse: [topView addSubView: fileListView below: underPane].
	fileListView controller terminateDuringSelect: true.  "Pane to left may change under scrollbar"

	fileContentsView _ PluggableTextView on: aFileList
		text: #contents accept: #put:
		readSelection: #contentsSelection menu: #fileContentsMenu:shifted:.
	fileContentsView window: (0@0 extent: 200@140).
	topView addSubView: fileContentsView below: templateView.

	topView controller open.








