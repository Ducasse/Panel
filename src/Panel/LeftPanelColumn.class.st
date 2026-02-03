Class {
	#name : 'LeftPanelColumn',
	#superclass : 'PanelColumn',
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
LeftPanelColumn >> bottomRight [
	
	^ hidden 
		ifTrue: [ 0@ parentHeight ]
		ifFalse: [ width @ parentHeight ]
]

{ #category : 'accessing' }
LeftPanelColumn >> bottomSplit [
	
	^ 0 @ (parentHeight /2) corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [

	^ 0 @ 0
]

{ #category : 'accessing' }
LeftPanelColumn >> topSplit [
	

	^ self topLeft corner: width @ (parentHeight /2 )
]
