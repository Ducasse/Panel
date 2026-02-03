Class {
	#name : 'LeftPanelColumn',
	#superclass : 'Object',
	#instVars : [
		'parentWidth',
		'parentHeight',
		'width'
	],
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'accessing' }
LeftPanelColumn >> bottomRight [
	
	^ width @ parentHeight
]

{ #category : 'accessing' }
LeftPanelColumn >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> extent [
	
	^ width @ parentHeight
]

{ #category : 'accessing]' }
LeftPanelColumn >> inExtent: aPoint [ 
 	
	parentWidth := aPoint x.
	parentHeight := aPoint y
	
]

{ #category : 'initialization' }
LeftPanelColumn >> initialize [ 
	
	width := 200. 
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [
	^ 0 @ 0
]

{ #category : 'accessing' }
LeftPanelColumn >> width: anInteger [ 
	width := anInteger
]
