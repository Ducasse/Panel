Class {
	#name : 'RightPanelColumn',
	#superclass : 'PanelColumn',
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
RightPanelColumn >> bottomRight [

	^ parentWidth @ parentHeight 
]

{ #category : 'accessing' }
RightPanelColumn >> bottomSplit [
	
	^ (parentWidth - width) @ (parentHeight /2) corner: self bottomRight
]

{ #category : 'accessing' }
RightPanelColumn >> topLeft [
	
	^ hidden 
		ifTrue: [ parentWidth @ 0]
		ifFalse: [ parentWidth - width @ 0 ]

]

{ #category : 'accessing' }
RightPanelColumn >> topSplit [
	

	^ self topLeft corner: parentWidth @ (parentHeight /2 )
]
