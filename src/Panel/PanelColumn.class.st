"
I'm the superclass of columns whose width can change.
"
Class {
	#name : 'PanelColumn',
	#superclass : 'Object',
	#instVars : [
		'parentWidth',
		'parentHeight',
		'width',
		'hidden',
		'parent'
	],
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
PanelColumn >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
PanelColumn >> extent [
	
	^ width @ self parentHeight
]

{ #category : 'operations' }
PanelColumn >> hide [
	
	hidden := true
]

{ #category : 'accessing' }
PanelColumn >> inExtent: aPoint [ 
 	
	self parentWidth: aPoint x.
	self parentHeight: aPoint y
	
]

{ #category : 'accessing' }
PanelColumn >> inPanel: aParent [

	parent := aParent
]

{ #category : 'initialization' }
PanelColumn >> initialize [ 
	
	super initialize.
	width := 200. 
	hidden := false.

]

{ #category : 'accessing' }
PanelColumn >> parentHeight [

	^ parent height
]

{ #category : 'accessing' }
PanelColumn >> parentHeight: anObject [

	parentHeight := anObject
]

{ #category : 'accessing' }
PanelColumn >> parentWidth [

	^ parent width
]

{ #category : 'accessing' }
PanelColumn >> parentWidth: anObject [

	parentWidth := anObject
]

{ #category : 'operations' }
PanelColumn >> unhide [
	
	hidden := false
]

{ #category : 'accessing' }
PanelColumn >> width: anInteger [ 
	width := anInteger
]
