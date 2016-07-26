infos
methodInfoFromRemoval
	"Return an array with the source index of the last version of the method,
	and the category in which it was defined (so it can be put back there if
	re-accepted from a version browser)."

	(changeType == #remove or: [changeType == #addedThenRemoved])
		ifTrue: [^ infoFromRemoval]
		ifFalse: [^ nil]