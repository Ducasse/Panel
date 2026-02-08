Class {
	#name : 'ToTopRowPane',
	#superclass : 'ToRowPane',
	#category : 'Panel-Toplo',
	#package : 'Panel-Toplo'
}

{ #category : 't - element with resize grips -  initializing' }
ToTopRowPane >> gripClass [ 

	^ ToBottomResizeGrip 
]

{ #category : 't - element with resize grips -  initializing' }
ToTopRowPane >> updateHeight: anInteger [

	panelist topRow height: anInteger
]
