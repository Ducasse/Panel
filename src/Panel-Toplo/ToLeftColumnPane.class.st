Class {
	#name : 'ToLeftColumnPane',
	#superclass : 'ToColumnPane',
	#category : 'Panel-Toplo',
	#package : 'Panel-Toplo'
}

{ #category : 'initialization' }
ToLeftColumnPane >> gripClass [

	^ ToRightResizeGrip
			
]

{ #category : 'initialization' }
ToLeftColumnPane >> repositionTopRow [

	topRow 
		position: panelist topRow topLeft;
		width: panelist rowWidth - 200;
		height: panelist topRow height.
]

{ #category : 'initialization' }
ToLeftColumnPane >> updateWidth: anInteger [
	"probably this will not be needed when I killed the panelist model"
	
	panelist leftColumn width: anInteger
]
