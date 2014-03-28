'From Cuis 4.2 of 25 July 2013 [latest update: #1969] on 26 March 2014 at 12:44:49.392578 pm'!
'Description Please enter a description for this package'!
!provides: 'FileMan-Adaptor-FileDirectory' 1 1!
!classDefinition: #FmFileDirectoryFileIOAccessorCuis category: #'FileMan-Adaptor-FileDirectory'!
FmFileIOAccessor subclass: #FmFileDirectoryFileIOAccessorCuis
	instanceVariableNames: 'defaultDirectoryPath'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FileMan-Adaptor-FileDirectory'!
!classDefinition: 'FmFileDirectoryFileIOAccessorCuis class' category: #'FileMan-Adaptor-FileDirectory'!
FmFileDirectoryFileIOAccessorCuis class
	instanceVariableNames: ''!


!FileDirectory methodsFor: '*FileMan-Adaptor-FileDirectory' stamp: 'mu 5/16/2007 21:01'!
asDirectoryEntry

!FmDirectoryEntry methodsFor: '*FileMan-Adaptor-FileDirectory' stamp: 'mu 3/14/2007 19:06'!
asFileDirectory

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 4/6/2008 14:10'!
asAbsolutePathName: aString

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'MU 3/26/2014 12:30'!
bareEntriesIn: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'MU 3/26/2014 12:33'!
bareEntryFromArray: entryArray in: pathString
	^DirectoryEntry fromArray: entryArray directory: (FileDirectory on: pathString)! !

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 3/19/2007 17:56'!
baseNameFor: localName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'mu 4/2/2008 17:14'!
basicDirectoryExists: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/13/2007 12:05'!
concreteStreamClass

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'mu 4/5/2008 13:32'!
containingDirectoryPathOf: pathName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:34'!
copy: fromFileFullName to: toFileFullName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 4/2/2008 17:15'!
copyFile: fileStream1 toFile: fileStream2

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:36'!
createDirectory: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/14/2007 20:16'!
currentDriveName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/14/2007 22:56'!
defaultDirectoryPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:36'!
deleteDirectory: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/14/2007 23:12'!
deleteFile: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:36'!
deleteFile: fullPathName ifAbsent: failBlock 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/26/2007 12:01'!
directoryExists: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/14/2007 19:15'!
directoryExists: localName in: directoryFullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 3/14/2007 19:20'!
directoryNamesIn: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/14/2007 19:21'!
drives

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'MU 3/26/2014 12:37'!
encode: encoderName on: externalStream 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 3/14/2007 22:43'!
entryNamesIn: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/19/2007 17:56'!
extensionDelimiter

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 3/19/2007 17:57'!
extensionFor: localName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 5/7/2007 15:56'!
fileExists: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/14/2007 22:46'!
fileExists: localName in: directoryFullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'file stream creation' stamp: 'mu 3/27/2007 23:58'!
fileNamed: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 3/14/2007 22:46'!
fileNamesIn: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/14/2007 22:44'!
fileOrDirectoryExists: localName in: directoryFullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'file stream creation' stamp: 'mu 3/13/2007 12:09'!
forceNewFileNamed: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'mu 7/14/2007 20:11'!
imageDirectoryPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'initialize-release' stamp: 'MU 3/26/2014 12:23'!
initDefaultDirectoryPath
	self initDefaultDirectoryPathWith: dir! !

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'initialize-release' stamp: 'MU 3/26/2014 12:21'!
initDefaultDirectoryPathWith: barePath
	dirName := barePath.
	[dirName endsWith: self slash] whileTrue:[

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'initialize-release' stamp: 'mu 3/14/2007 20:23'!
initialize

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'testing' stamp: 'mu 3/14/2007 22:07'!
isCaseSensitive

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'testing' stamp: 'mu 3/13/2007 21:40'!
isDriveSupported

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'MU 3/26/2014 12:37'!
lookupEntryIn: fullPathName index: index

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'file stream creation' stamp: 'mu 3/27/2007 23:58'!
newFileNamed: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onMac

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onUnix

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onWindows

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'mu 3/14/2007 20:09'!
pathNameDelimiter

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primCreateDirectory: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primDeleteDirectory: fullPath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primDeleteFileNamed: aFileName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/14/2007 19:27'!
primImagePath

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:12'!
primLookupEntryIn: fullPath index: index

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/14/2007 19:51'!
primPathNameDelimiter

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:12'!
primRename: oldFileFullName to: newFileFullName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'file stream creation' stamp: 'mu 3/13/2007 12:05'!
readOnlyFileNamed: fullPathName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:36'!
rename: oldFileFullName to: newFileFullName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'actions' stamp: 'MU 3/26/2014 12:37'!
renameDirectory: oldFileFullName to: newFileFullName 

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'accessing' stamp: 'mu 3/14/2007 20:09'!
slash

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'utilities' stamp: 'mu 4/2/2008 17:15'!
splitNameVersionExtensionFor: fileName

!FmFileDirectoryFileIOAccessorCuis methodsFor: 'private' stamp: 'mu 3/14/2007 23:45'!
try: execBlock forFileNamed: fullName

!FmFileDirectoryFileIOAccessorCuis class methodsFor: 'class initialization' stamp: 'mu 3/27/2013 23:33'!
initialize
FmFileDirectoryFileIOAccessorCuis initialize!