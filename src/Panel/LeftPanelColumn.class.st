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
		ifTrue: [ 0@ self parentHeight ]
		ifFalse: [ width @ self parentHeight ]
]

{ #category : 'accessing' }
LeftPanelColumn >> bottomSplit [
	
	^ 0 @ (self parentHeight /2) corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [

	^ 0 @ 0
]

{ #category : 'accessing' }
LeftPanelColumn >> topSplit [
	

	^ self topLeft corner: width @ (self parentHeight /2 )
]
