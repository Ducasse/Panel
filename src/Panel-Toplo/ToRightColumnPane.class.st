Class {
	#name : 'ToRightColumnPane',
	#superclass : 'ToColumnPane',
	#category : 'Panel-Toplo-Toplo',
	#package : 'Panel-Toplo',
	#tag : 'Toplo'
}

{ #category : 'initialize' }
ToRightColumnPane >> gripClass [

	^ ToLeftResizeGrip
			
]

{ #category : 'initialize' }
ToRightColumnPane >> repositionTopRow [ 

	topRow 
		position: panelist topRow topLeft;
		width: panelist rowWidth - 200;
		height: panelist topRow height.
]

{ #category : 'initialize' }
ToRightColumnPane >> updateWidth: anInteger [
	"probably this will not be needed when I killed the panelist model"
	 
	panelist rightColumn width: anInteger
						
]
