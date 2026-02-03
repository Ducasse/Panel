Class {
	#name : 'LeftPanelColumn',
	#superclass : 'Object',
	#instVars : [
		'parentWidth',
		'parentHeight',
		'width',
		'hidden'
	],
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'accessing' }
LeftPanelColumn >> bottomRight [
	
	^ hidden 
		ifTrue: [ 0@ parentHeight ]
		ifFalse: [ width @ parentHeight ]
]

{ #category : 'accessing' }
LeftPanelColumn >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> extent [
	
	^ width @ parentHeight
]

{ #category : 'host space - displaying' }
LeftPanelColumn >> hide [
	
	hidden := true
]

{ #category : 'accessing]' }
LeftPanelColumn >> inExtent: aPoint [ 
 	
	parentWidth := aPoint x.
	parentHeight := aPoint y
	
]

{ #category : 'initialization' }
LeftPanelColumn >> initialize [ 
	
	super initialize.
	width := 200. 
	hidden := false
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [
	^ 0 @ 0
]

{ #category : 'as yet unclassified' }
LeftPanelColumn >> unhide [
	
	hidden := false
]

{ #category : 'accessing' }
LeftPanelColumn >> width: anInteger [ 
	width := anInteger
]
