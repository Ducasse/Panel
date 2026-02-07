"
I'm the superclass of columns whose width can change.
"
Class {
	#name : 'PanelColumn',
	#superclass : 'Object',
	#instVars : [
		'width',
		'hidden',
		'parent',
		'verticalSplitY'
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
PanelColumn >> parentWidth [

	^ parent width
]

{ #category : 'operations' }
PanelColumn >> splitVerticalPosition: aPoint [

	verticalSplitY := aPoint y
]

{ #category : 'operations' }
PanelColumn >> unhide [
	
	hidden := false
]

{ #category : 'accessing' }
PanelColumn >> verticalSplitY [

	^ verticalSplitY ifNil: [ verticalSplitY := parent height / 2 ]
]

{ #category : 'accessing' }
PanelColumn >> width [
	^ width
]

{ #category : 'accessing' }
PanelColumn >> width: anInteger [ 
	width := anInteger
]
