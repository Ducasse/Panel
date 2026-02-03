Class {
	#name : 'PanelColumn',
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
PanelColumn >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
PanelColumn >> extent [
	
	^ width @ parentHeight
]

{ #category : 'operations' }
PanelColumn >> hide [
	
	hidden := true
]

{ #category : 'accessing' }
PanelColumn >> inExtent: aPoint [ 
 	
	parentWidth := aPoint x.
	parentHeight := aPoint y
	
]

{ #category : 'initialization' }
PanelColumn >> initialize [ 
	
	super initialize.
	width := 200. 
	hidden := false.

]

{ #category : 'operations' }
PanelColumn >> unhide [
	
	hidden := false
]

{ #category : 'accessing' }
PanelColumn >> width: anInteger [ 
	width := anInteger
]
