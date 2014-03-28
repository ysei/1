'From Cuis 4.2 of 25 July 2013 [latest update: #1969] on 26 March 2014 at 12:47:01.718578 pm'!
'Description Please enter a description for this package'!
!provides: 'FileMan-Core' 1 2!
!classDefinition: #FmFileEntry category: #'FileMan-Core'!
Object subclass: #FmFileEntry
	instanceVariableNames: 'drive pathComponents parent name fileSize creationTime modificationTime isDirectory options'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FileMan-Core'!
!classDefinition: 'FmFileEntry class' category: #'FileMan-Core'!
FmFileEntry class
	instanceVariableNames: ''!

!classDefinition: #FmDirectoryEntry category: #'FileMan-Core'!
FmFileEntry subclass: #FmDirectoryEntry
	instanceVariableNames: 'children'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FileMan-Core'!
!classDefinition: 'FmDirectoryEntry class' category: #'FileMan-Core'!
FmDirectoryEntry class
	instanceVariableNames: ''!

!classDefinition: #FmFileIOAccessor category: #'FileMan-Core'!
Object subclass: #FmFileIOAccessor
	instanceVariableNames: ''
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'FileMan-Core'!
!classDefinition: 'FmFileIOAccessor class' category: #'FileMan-Core'!
FmFileIOAccessor class
	instanceVariableNames: 'default librarySpecificClass dialectUtilClass'!

!classDefinition: #FmPortableUtil category: #'FileMan-Core'!
Object subclass: #FmPortableUtil
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FileMan-Core'!
!classDefinition: 'FmPortableUtil class' category: #'FileMan-Core'!
FmPortableUtil class
	instanceVariableNames: ''!


!FmFileEntry commentStamp: 'mu 11/6/2006 20:21' prior: 0!
I represent a single file entry (including directory).

!FmDirectoryEntry commentStamp: 'mu 11/6/2006 20:21' prior: 0!
I represent a single file directory.

!FmFileIOAccessor commentStamp: '<historical>' prior: 0!
I am an accessor to the low level file IO.

!Object methodsFor: '*fileman-core-converting' stamp: 'mu 10/12/2006 20:20'!
asFileEntry

!Object methodsFor: '*fileman-core-testing' stamp: 'mu 6/11/2006 17:28'!
isFileEntry

!ByteArray methodsFor: '*fileman-core-actions' stamp: 'mu 3/10/2008 17:51'!
fileContents

!ByteArray methodsFor: '*fileman-core-actions' stamp: 'mu 3/10/2008 17:51'!
fileContents: aString

!String methodsFor: '*fileman-core-converting' stamp: 'mu 4/5/2008 12:22'!
asAbsolutePathName

!String methodsFor: '*fileman-core-converting' stamp: 'mu 6/15/2006 21:48'!
asDirectoryEntry

!String methodsFor: '*fileman-core-converting' stamp: 'mu 5/4/2007 22:37'!
asDirectoryEntry: directoryEntryClass

!String methodsFor: '*fileman-core-converting' stamp: 'mu 3/15/2007 10:24'!
asDriveName

!String methodsFor: '*fileman-core-converting' stamp: 'mu 6/11/2006 22:42'!
asFileEntry

!String methodsFor: '*fileman-core-converting' stamp: 'mu 5/4/2007 22:38'!
asFileEntry: fileEntryClass

!String methodsFor: '*fileman-core-converting' stamp: 'mu 3/4/2007 11:04'!
asPathComponents

!String methodsFor: '*fileman-core-converting' stamp: 'mu 3/4/2007 11:04'!
asPathTokens

!String methodsFor: '*fileman-core-testing' stamp: 'mu 3/3/2007 09:46'!
beginsWithDriveLetter

!String methodsFor: '*fileman-core-testing' stamp: 'mu 3/4/2007 10:22'!
beginsWithPathSeparator

!String methodsFor: '*fileman-core-actions' stamp: 'mu 6/11/2006 22:12'!
fileContents

!String methodsFor: '*fileman-core-actions' stamp: 'mu 6/11/2006 22:19'!
fileContents: aString

!String methodsFor: '*fileman-core-actions' stamp: 'mu 3/10/2008 17:52'!
fileContents: aString by: encoderName

!String methodsFor: '*fileman-core-actions' stamp: 'mu 3/10/2008 17:53'!
fileContentsBy: encoderName

!String methodsFor: '*fileman-core-accessing' stamp: 'mu 3/3/2007 19:38'!
indexOfFirstPathSeparator

!String methodsFor: '*fileman-core-accessing' stamp: 'mu 5/7/2007 15:48'!
indexOfLastPathSeparator

!String methodsFor: '*fileman-core-testing' stamp: 'mu 4/6/2008 20:36'!
isAbsolutePathName

!String methodsFor: '*fileman-core-testing' stamp: 'mu 3/15/2007 10:24'!
isDriveName

!String methodsFor: '*fileman-core-testing' stamp: 'mu 3/2/2007 22:05'!
isPathSeparator

!String methodsFor: '*fileman-core-testing' stamp: 'mu 6/11/2006 22:41'!
isRelativeMark

!String methodsFor: '*fileman-core-testing' stamp: 'mu 3/4/2007 10:46'!
isRelativePathName

!String methodsFor: '*fileman-core-accessing' stamp: 'mu 5/7/2007 15:55'!
pathAndLocalName

!String methodsFor: '*fileman-core-accessing' stamp: 'mu 3/4/2007 10:45'!
upToFirstPathSeparator

!String methodsFor: '*fileman-core-accessing' stamp: 'mu 5/7/2007 15:49'!
upToLastPathSeparator

!Character methodsFor: '*fileman-core-testing' stamp: 'mu 3/2/2007 21:34'!
isDriveLetter

!Character methodsFor: '*fileman-core-testing' stamp: 'mu 3/3/2007 09:45'!
isDriveSeparator

!Character methodsFor: '*fileman-core-testing' stamp: 'mu 3/3/2007 19:37'!
isPathSeparator

!FmFileEntry methodsFor: 'actions-path' stamp: 'mu 6/19/2006 23:29'!
, pathString

!FmFileEntry methodsFor: 'actions-path' stamp: 'mu 6/19/2006 23:52'!
/ pathString

!FmFileEntry methodsFor: 'actions-rio' stamp: 'mu 3/12/2007 23:32'!
< aStringOrBytes 

!FmFileEntry methodsFor: 'actions-rio' stamp: 'mu 3/12/2007 23:32'!
<< aStringOrBytes 

!FmFileEntry methodsFor: 'comparing' stamp: 'mu 6/11/2006 18:01'!
= aFileEntry

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:47'!
allChildrenDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 21:37'!
allChildrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:50'!
allDirectoriesDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:51'!
allFilesDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 17:18'!
allFilesDo: aBlock matches: selectionBlock

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 9/27/2006 20:21'!
appendContents: aStringOrBytes 

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'mu 3/27/2007 23:53'!
appendStream

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'MU 3/26/2014 12:39'!
appendStreamContents: blockWithArg 

!FmFileEntry methodsFor: 'converting' stamp: 'mu 3/27/2007 15:30'!
as: aCustomFileEntryClass

!FmFileEntry methodsFor: 'converting' stamp: 'mu 3/27/2007 23:10'!
asDirectoryEntry

!FmFileEntry methodsFor: 'converting' stamp: 'mu 5/4/2007 22:38'!
asDirectoryEntry: directoryEntryClass

!FmFileEntry methodsFor: 'converting' stamp: 'mu 9/21/2006 10:20'!
asFileEntry

!FmFileEntry methodsFor: 'converting' stamp: 'mu 5/4/2007 22:38'!
asFileEntry: fileEntryClass

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 10/12/2006 20:18'!
assureExistence

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 7/30/2006 22:45'!
at: localFileName 

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 7/27/2006 17:33'!
at: localFileName ifAbsent: block

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 7/19/2006 16:59'!
at: localFileName put: contents

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 11/30/2006 17:58'!
baseName

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 17:49'!
basicPathComponents: aCollection

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 8/10/2006 18:47'!
binaryAt: localFileName 

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 8/10/2006 18:47'!
binaryAt: localFileName ifAbsent: block

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:13'!
binaryContents

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:15'!
binaryContents: aByteArray

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 8/1/2006 19:24'!
children

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:57'!
childrenDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 21:31'!
childrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock

!FmFileEntry methodsFor: 'actions-path' stamp: 'mu 7/30/2006 14:06'!
concat: pathString

!FmFileEntry methodsFor: 'actions-path' stamp: 'MasashiUmezawa 7/8/2012 16:25'!
concatPathComponents: components 

!FmFileEntry methodsFor: 'private' stamp: 'mu 3/10/2008 15:52'!
contentsOf: aStream

!FmFileEntry methodsFor: 'private' stamp: 'MU 3/26/2014 12:39'!
contentsOf: aStream by: encoderName

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 3/28/2013 00:39'!
copyTo: aFileEntryOrString 

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 18:19'!
creationTime

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 14:03'!
creationTime: value

!FmFileEntry methodsFor: 'private' stamp: 'mu 3/14/2007 19:30'!
currentDriveName

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 3/15/2007 19:52'!
delete

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 8/1/2006 19:21'!
directories

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:57'!
directoriesDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 8/9/2006 13:55'!
directoriesMatches: selectionBlock

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 8/1/2006 19:23'!
directory

!FmFileEntry methodsFor: 'factory' stamp: 'mu 3/28/2007 00:01'!
directoryEntryClass

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 3/3/2007 22:46'!
drive

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 13:26'!
drive: aString

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 3/2/2007 21:04'!
drives

!FmFileEntry methodsFor: 'converting' stamp: 'mu 3/28/2013 00:23'!
ensureAsDirectory

!FmFileEntry methodsFor: 'converting' stamp: 'mu 3/28/2013 00:22'!
ensureAsFile

!FmFileEntry methodsFor: 'private' stamp: 'mu 3/27/2007 23:11'!
ensureParent

!FmFileEntry methodsFor: 'testing' stamp: 'MU 3/26/2014 12:40'!
exists

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 6/19/2006 23:27'!
extension

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 8/1/2006 19:23'!
file

!FmFileEntry methodsFor: 'factory' stamp: 'mu 3/28/2007 00:01'!
fileAccessor

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:12'!
fileContents

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:15'!
fileContents: aStringOrBytes 

!FmFileEntry methodsFor: 'factory' stamp: 'mu 3/28/2007 00:01'!
fileEntryClass

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 18:19'!
fileSize

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 14:07'!
fileSize: value

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 8/1/2006 19:22'!
files

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:57'!
filesDo: aBlock

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 8/9/2006 13:54'!
filesMatches: selectionBlock

!FmFileEntry methodsFor: 'comparing' stamp: 'mu 10/10/2008 16:04'!
hash

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 11/6/2006 20:38'!
includesKey: fileName

!FmFileEntry methodsFor: 'private' stamp: 'mu 6/11/2006 18:18'!
initValuesFrom: otherEntry

!FmFileEntry methodsFor: 'private' stamp: 'mu 6/11/2006 18:18'!
initValuesFromParent

!FmFileEntry methodsFor: 'testing' stamp: 'mu 5/4/2007 23:11'!
isDirectory

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 5/4/2007 23:08'!
isDirectory: aBoolean

!FmFileEntry methodsFor: 'testing' stamp: 'mu 3/13/2007 21:39'!
isDriveSupported

!FmFileEntry methodsFor: 'testing' stamp: 'mu 5/4/2007 23:20'!
isFile

!FmFileEntry methodsFor: 'testing' stamp: 'mu 6/11/2006 17:27'!
isFileEntry

!FmFileEntry methodsFor: 'testing' stamp: 'mu 3/15/2007 13:08'!
isRoot

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 7/27/2006 17:35'!
keys

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 8/9/2006 13:55'!
latestFileMatches: selectionBlock

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 18:19'!
modificationTime

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 14:03'!
modificationTime: value

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 13:35'!
name

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/18/2006 22:05'!
name: aString 

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 3/14/2007 18:03'!
nameVersionExtension

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 10/25/2010 22:24'!
nameWithoutExtension

!FmFileEntry methodsFor: 'enumeration' stamp: 'mu 8/9/2006 13:55'!
oldestFileMatches: selectionBlock

!FmFileEntry methodsFor: 'testing' stamp: 'mu 3/13/2007 21:38'!
onMac

!FmFileEntry methodsFor: 'testing' stamp: 'mu 3/13/2007 21:38'!
onUnix

!FmFileEntry methodsFor: 'testing' stamp: 'mu 3/13/2007 21:38'!
onWindows

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 3/27/2007 15:21'!
options

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/19/2006 23:21'!
options: aCollection

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 17:41'!
parent

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 3/13/2007 21:43'!
parent: aFmDirectory

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 1/24/2012 15:44'!
parents

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 13:16'!
pathComponents

!FmFileEntry methodsFor: 'initialize-release' stamp: 'mu 10/26/2006 19:20'!
pathComponents: aCollection

!FmFileEntry methodsFor: 'initialize-release' stamp: 'mu 3/3/2007 23:34'!
pathComponents: aCollection detectDrive: detectDrive

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 4/6/2008 14:24'!
pathName

!FmFileEntry methodsFor: 'initialize-release' stamp: 'mu 3/27/2007 23:12'!
pathName: aString 

!FmFileEntry methodsFor: 'actions-pipe' stamp: 'mu 10/5/2006 19:47'!
pipe: filterBlock to: aFileEntryOrString 

!FmFileEntry methodsFor: 'actions-pipe' stamp: 'mu 10/5/2006 19:41'!
pipeRepeat: filterBlock to: aFileEntryOrString 

!FmFileEntry methodsFor: 'actions-pipe' stamp: 'mu 10/5/2006 19:48'!
pipeRepeat: filterBlock while: terminateBlock to: aFileEntryOrString 

!FmFileEntry methodsFor: 'printing' stamp: 'mu 2/28/2007 00:06'!
printOn: aStream 

!FmFileEntry methodsFor: 'printing' stamp: 'MU 3/26/2014 12:43'!
printPathOn: aStream 

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'mu 4/7/2008 16:12'!
readStream

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'MU 3/26/2014 12:41'!
readStreamContents: blockWithArg 

!FmFileEntry methodsFor: 'initialize-release' stamp: 'mu 9/13/2006 19:36'!
refresh

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 7/19/2006 17:00'!
removeKey: localFileName 

!FmFileEntry methodsFor: 'dictionary-like' stamp: 'mu 9/20/2006 18:10'!
removeKey: localFileName ifAbsent: failBlock

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 3/13/2007 11:52'!
rename: newName

!FmFileEntry methodsFor: 'accessing' stamp: 'mu 3/27/2007 23:12'!
root

!FmFileEntry methodsFor: 'private' stamp: 'mu 3/10/2008 15:41'!
setContentsOf: aStream to: aStringOrBytes 

!FmFileEntry methodsFor: 'private' stamp: 'MU 3/26/2014 12:41'!
setContentsOf: aStream to: aStringOrBytes by: encoderName

!FmFileEntry methodsFor: 'private' stamp: 'mu 3/27/2007 23:12'!
setDriveNameAndPathComponentsFrom: rawPathString 

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 10/24/2007 23:08'!
shortName

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 3/13/2007 21:42'!
slash

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:12'!
textContents

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 8/10/2006 18:13'!
textContents: aString 

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 3/10/2008 15:58'!
textContents: aString by: encoderName

!FmFileEntry methodsFor: 'actions-file' stamp: 'mu 3/10/2008 15:58'!
textContentsBy: encoderName 

!FmFileEntry methodsFor: 'accessing-file name' stamp: 'mu 6/19/2006 23:28'!
version

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'mu 3/27/2007 23:51'!
writeStream

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'mu 3/27/2007 23:52'!
writeStreamConfirming

!FmFileEntry methodsFor: 'accessing-stream' stamp: 'MU 3/26/2014 12:41'!
writeStreamContents: blockWithArg 

!FmFileEntry class methodsFor: 'factory' stamp: 'mu 3/27/2007 23:06'!
directoryEntryClass

!FmFileEntry class methodsFor: 'accessing' stamp: 'mu 3/15/2007 10:24'!
drives

!FmFileEntry class methodsFor: 'instance creation' stamp: 'mu 5/4/2007 23:08'!
entry: bareFileEntry

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 3/27/2013 23:51'!
example1

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 3/27/2013 23:53'!
example2

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 3/27/2013 23:54'!
example3

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 6/20/2006 00:24'!
example4

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 9/21/2006 09:57'!
example5

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 10/5/2006 19:58'!
example6

!FmFileEntry class methodsFor: 'examples' stamp: 'mu 3/28/2013 00:29'!
example7

!FmFileEntry class methodsFor: 'factory' stamp: 'mu 5/4/2007 22:40'!
fileEntryClass

!FmFileEntry class methodsFor: 'class initialization' stamp: 'mu 3/26/2013 01:25'!
obsolete

!FmFileEntry class methodsFor: 'starting up' stamp: 'mu 3/26/2013 01:23'!
onSystemStartUp

!FmFileEntry class methodsFor: 'instance creation' stamp: 'mu 6/11/2006 17:42'!
pathComponents: comps

!FmFileEntry class methodsFor: 'instance creation' stamp: 'mu 10/26/2006 19:21'!
pathComponents: comps drive: driveString

!FmFileEntry class methodsFor: 'instance creation' stamp: 'mu 6/11/2006 22:21'!
pathName: aString

!FmDirectoryEntry methodsFor: 'actions-path' stamp: 'mu 3/28/2013 01:19'!
/ pathString

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:45'!
allChildrenDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 21:55'!
allChildrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:49'!
allDirectoriesDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:54'!
allFilesDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 22:00'!
allFilesDo: aBlock matches: selectionBlock

!FmDirectoryEntry methodsFor: 'converting' stamp: 'mu 9/21/2006 10:21'!
asDirectoryEntry

!FmDirectoryEntry methodsFor: 'converting' stamp: 'mu 3/28/2013 00:25'!
asFileEntry

!FmDirectoryEntry methodsFor: 'actions-directory' stamp: 'mu 3/15/2007 13:09'!
assureExistence

!FmDirectoryEntry methodsFor: 'private' stamp: 'MU 3/26/2014 12:38'!
assureExistenceFileNamed: localName

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/10/2008 15:56'!
at: localFileName 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/10/2008 15:56'!
at: localFileName by: encoderName

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 4/7/2008 16:12'!
at: localFileName ifAbsent: block 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/10/2008 15:48'!
at: localFileName put: contents 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/10/2008 15:48'!
at: localFileName put: contents by: encoderName

!FmDirectoryEntry methodsFor: 'private' stamp: 'mu 3/15/2007 19:53'!
basicRecursiveDelete

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/13/2007 12:12'!
binaryAt: localFileName 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 4/7/2008 16:12'!
binaryAt: localFileName ifAbsent: block 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 9/21/2006 10:07'!
binaryAt: localFileName put: contents 

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 17:37'!
children

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:43'!
childrenDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'MasashiUmezawa 7/8/2012 21:45'!
childrenDo: aBlock filesMatches: selectionBlock directoryMatches: dirSelectionBlock

!FmDirectoryEntry methodsFor: 'actions-directory' stamp: 'mu 10/25/2010 22:44'!
copyTo: aDirectoryEntryOrString 

!FmDirectoryEntry methodsFor: 'actions-directory' stamp: 'mu 3/15/2007 19:52'!
delete

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 17:26'!
directories

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:42'!
directoriesDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 6/18/2006 18:49'!
directoriesMatches: selectionBlock

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 6/20/2006 00:22'!
directory

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 3/10/2008 15:52'!
directoryNames

!FmDirectoryEntry methodsFor: 'converting' stamp: 'mu 3/28/2013 00:23'!
ensureAsDirectory

!FmDirectoryEntry methodsFor: 'converting' stamp: 'mu 3/28/2013 00:22'!
ensureAsFile

!FmDirectoryEntry methodsFor: 'private' stamp: 'mu 3/27/2007 23:11'!
entriesIn: directoryFullPath from: parentEntry 

!FmDirectoryEntry methodsFor: 'testing' stamp: 'mu 5/15/2007 14:24'!
exists

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 6/20/2006 00:22'!
file

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 3/13/2007 12:14'!
fileNames

!FmDirectoryEntry methodsFor: 'accessing' stamp: 'mu 6/11/2006 17:27'!
files

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 9/13/2006 19:40'!
filesDo: aBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 6/18/2006 18:48'!
filesMatches: selectionBlock

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/13/2007 12:14'!
includesKey: fileName

!FmDirectoryEntry methodsFor: 'private' stamp: 'mu 3/27/2007 23:04'!
initChildren

!FmDirectoryEntry methodsFor: 'testing' stamp: 'mu 5/4/2007 23:19'!
isDirectory

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 7/27/2006 17:35'!
keys

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 6/18/2006 18:48'!
latestFileMatches: selectionBlock

!FmDirectoryEntry methodsFor: 'enumeration' stamp: 'mu 6/18/2006 18:48'!
oldestFileMatches: selectionBlock

!FmDirectoryEntry methodsFor: 'actions-directory' stamp: 'mu 3/15/2007 19:53'!
recursiveDelete

!FmDirectoryEntry methodsFor: 'initialize-release' stamp: 'mu 3/15/2007 18:59'!
refresh

!FmDirectoryEntry methodsFor: 'initialize-release' stamp: 'mu 3/15/2007 18:59'!
refreshChildren

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/13/2007 11:55'!
removeKey: localFileName 

!FmDirectoryEntry methodsFor: 'dictionary-like' stamp: 'mu 3/15/2007 18:59'!
removeKey: localFileName ifAbsent: failBlock

!FmDirectoryEntry methodsFor: 'actions-directory' stamp: 'mu 6/4/2010 02:16'!
rename: newName

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 3/27/2007 23:13'!
default 

!FmDirectoryEntry class methodsFor: 'factory' stamp: 'mu 5/4/2007 22:41'!
fileEntryClass

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 3/14/2007 19:49'!
on: aFileDirectry 

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 6/11/2006 18:46'!
parent 

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 3/14/2007 19:48'!
pathName: fullPathName

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 3/3/2007 17:13'!
root 

!FmDirectoryEntry class methodsFor: 'instance creation' stamp: 'mu 3/3/2007 10:15'!
roots

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 4/6/2008 14:10'!
asAbsolutePathName: aString

!FmFileIOAccessor methodsFor: 'private' stamp: 'MU 3/26/2014 12:27'!
bareEntriesIn: fullPath

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 5/9/2010 18:14'!
bareEntryFromArray: array

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 3/19/2007 17:56'!
baseNameFor: localName 

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 4/2/2008 17:14'!
basicDirectoryExists: fullPathName

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/13/2007 12:05'!
concreteStreamClass

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 4/5/2008 13:32'!
containingDirectoryPathOf: pathName 

!FmFileIOAccessor methodsFor: 'actions' stamp: 'MU 3/26/2014 12:46'!
copy: fromFileFullName to: toFileFullName 

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 4/2/2008 17:15'!
copyFile: fileStream1 toFile: fileStream2

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 18:08'!
createDirectory: fullPathName

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/14/2007 20:16'!
currentDriveName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 23:54'!
deleteDirectory: fullPathName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 23:12'!
deleteFile: fullPathName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 23:12'!
deleteFile: fullPathName ifAbsent: failBlock 

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/26/2013 01:33'!
dialectUtilClass

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/26/2007 12:01'!
directoryExists: fullPathName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 19:15'!
directoryExists: localName in: directoryFullPath

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 3/14/2007 19:20'!
directoryNamesIn: fullPath

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/14/2007 19:21'!
drives

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 4/4/2008 18:45'!
encode: encoderName on: externalStream 

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 3/14/2007 22:43'!
entryNamesIn: fullPath

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/19/2007 17:56'!
extensionDelimiter

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 3/19/2007 17:57'!
extensionFor: localName 

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 5/7/2007 15:56'!
fileExists: fullPathName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 22:46'!
fileExists: localName in: directoryFullPath

!FmFileIOAccessor methodsFor: 'file stream creation' stamp: 'mu 3/27/2007 23:58'!
fileNamed: fullPathName

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 3/14/2007 22:46'!
fileNamesIn: fullPath

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 22:44'!
fileOrDirectoryExists: localName in: directoryFullPath

!FmFileIOAccessor methodsFor: 'file stream creation' stamp: 'mu 3/13/2007 12:09'!
forceNewFileNamed: fullPathName

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 7/14/2007 20:11'!
imageDirectoryPath

!FmFileIOAccessor methodsFor: 'testing' stamp: 'mu 3/14/2007 22:07'!
isCaseSensitive

!FmFileIOAccessor methodsFor: 'testing' stamp: 'mu 3/13/2007 21:40'!
isDriveSupported

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 3/14/2007 18:08'!
lookupEntryIn: fullPathName index: index

!FmFileIOAccessor methodsFor: 'file stream creation' stamp: 'mu 3/27/2007 23:58'!
newFileNamed: fullPathName

!FmFileIOAccessor methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onMac

!FmFileIOAccessor methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onUnix

!FmFileIOAccessor methodsFor: 'testing' stamp: 'mu 3/14/2007 20:08'!
onWindows

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 3/14/2007 20:09'!
pathNameDelimiter

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primCreateDirectory: fullPath

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primDeleteDirectory: fullPath

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:11'!
primDeleteFileNamed: aFileName

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/14/2007 19:27'!
primImagePath

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:12'!
primLookupEntryIn: fullPath index: index

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/14/2007 19:51'!
primPathNameDelimiter

!FmFileIOAccessor methodsFor: 'primitives' stamp: 'mu 3/13/2007 00:12'!
primRename: oldFileFullName to: newFileFullName 

!FmFileIOAccessor methodsFor: 'file stream creation' stamp: 'mu 3/13/2007 12:05'!
readOnlyFileNamed: fullPathName

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 5/24/2007 13:52'!
rename: oldFileFullName to: newFileFullName 

!FmFileIOAccessor methodsFor: 'actions' stamp: 'mu 6/4/2010 02:20'!
renameDirectory: oldFileFullName to: newFileFullName 

!FmFileIOAccessor methodsFor: 'accessing' stamp: 'mu 3/14/2007 20:09'!
slash

!FmFileIOAccessor methodsFor: 'utilities' stamp: 'mu 4/2/2008 17:15'!
splitNameVersionExtensionFor: fileName

!FmFileIOAccessor methodsFor: 'private' stamp: 'mu 3/14/2007 23:45'!
try: execBlock forFileNamed: fullName

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 4/25/2013 23:32'!
beDefault

!FmFileIOAccessor class methodsFor: 'instance creation' stamp: 'mu 3/26/2013 01:43'!
default

!FmFileIOAccessor class methodsFor: 'accessing' stamp: 'mu 3/14/2007 22:23'!
defaultDirectoryPath

!FmFileIOAccessor class methodsFor: 'accessing' stamp: 'mu 3/24/2013 00:37'!
dialectUtilClass

!FmFileIOAccessor class methodsFor: 'accessing' stamp: 'mu 3/24/2013 00:38'!
dialectUtilClass: aDialectSpecificPortableUtil

!FmFileIOAccessor class methodsFor: 'accessing exception' stamp: 'mu 3/24/2013 00:48'!
fileDoesNotExistException

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 3/26/2013 01:34'!
initDefault

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 3/24/2013 00:48'!
initDialectUtilClass

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 3/19/2013 17:42'!
initLibrarySpecificClass

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 3/27/2013 23:32'!
initialize

!FmFileIOAccessor class methodsFor: 'accessing' stamp: 'mu 3/19/2013 17:46'!
librarySpecificClass

!FmFileIOAccessor class methodsFor: 'accessing' stamp: 'mu 3/19/2013 17:44'!
librarySpecificClass: aLibrarySpecificFileIOAccessor

!FmFileIOAccessor class methodsFor: 'class initialization' stamp: 'mu 3/24/2013 00:49'!
obsolete

!FmFileIOAccessor class methodsFor: 'events' stamp: 'mu 3/26/2013 01:29'!
onSystemStartUp

!FmPortableUtil class methodsFor: 'actions' stamp: 'mu 3/26/2013 01:19'!
addToStartUpList: aClass

!FmPortableUtil class methodsFor: 'accessing' stamp: 'mu 3/24/2013 00:47'!
fileDoesNotExistException

!FmPortableUtil class methodsFor: 'actions' stamp: 'mu 3/26/2013 01:19'!
removeFromStartUpList: aClass
FmFileIOAccessor initialize!