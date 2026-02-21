Class {
	#name : 'ToTopRowPane',
	#superclass : 'ToRowPane',
	#category : 'Panel-Toplo-Toplo',
	#package : 'Panel-Toplo',
	#tag : 'Toplo'
}

{ #category : 't - element with resize grips -  initializing' }
ToTopRowPane >> gripClass [ 

	^ ToBottomResizeGrip 
]

{ #category : 'accessing' }
ToTopRowPane >> panelist: aPanelist [ 
	panelist := aPanelist 
]

{ #category : 't - element with resize grips -  initializing' }
ToTopRowPane >> updateHeight: anInteger [

	panelist topRow height: anInteger
]
