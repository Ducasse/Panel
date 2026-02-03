Class {
	#name : 'LeftPanelColumn',
	#superclass : 'Object',
	#instVars : [
		'parentWidth',
		'parentHeight',
		'width',
		'hidden',
		'split'
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

{ #category : 'as yet unclassified' }
LeftPanelColumn >> bottomSplit [
	
	^ 0 @ (parentHeight /2) corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> extent [
	
	^ width @ parentHeight
]

{ #category : 'operations' }
LeftPanelColumn >> hide [
	
	hidden := true
]

{ #category : 'accessing' }
LeftPanelColumn >> inExtent: aPoint [ 
 	
	parentWidth := aPoint x.
	parentHeight := aPoint y
	
]

{ #category : 'initialization' }
LeftPanelColumn >> initialize [ 
	
	super initialize.
	width := 200. 
	hidden := false.
	split := false.
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [

	^ split ifFalse: [ 0 @ 0 ]
]

{ #category : 'as yet unclassified' }
LeftPanelColumn >> topSplit [
	

	^ self topLeft corner: width @ (parentHeight /2 )
]

{ #category : 'operations' }
LeftPanelColumn >> unhide [
	
	hidden := false
]

{ #category : 'accessing' }
LeftPanelColumn >> width: anInteger [ 
	width := anInteger
]
