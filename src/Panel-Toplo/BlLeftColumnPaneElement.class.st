Class {
	#name : 'BlLeftColumnPaneElement',
	#superclass : 'BlColumnPaneElement',
	#instVars : [
		'hidden'
	],
	#category : 'Panel-Toplo-Element',
	#package : 'Panel-Toplo',
	#tag : 'Element'
}

{ #category : 'accessing' }
BlLeftColumnPaneElement >> bottomRight [
	
	^ hidden 
		ifTrue: [ 0 @ self parentHeight ]
		ifFalse: [ self width @ self parentHeight ]
]

{ #category : 'initialization' }
BlLeftColumnPaneElement >> gripClass [

	^ ToRightResizeGrip
			
]

{ #category : 'initialization' }
BlLeftColumnPaneElement >> initialize [ 

	super initialize. 
	hidden := false.
	self width: 200
	
]

{ #category : 'initialization' }
BlLeftColumnPaneElement >> repositionTopRow [

	"topRow 
		position: panelist topRow topLeft;
		width: panelist rowWidth - 200;
		height: panelist topRow height."
]

{ #category : 'accessing' }
BlLeftColumnPaneElement >> topLeft [

	^ 0 @ 0
]

{ #category : 'initialization' }
BlLeftColumnPaneElement >> updateWidth: anInteger [
	"probably this will not be needed when I killed the panelist model"
	
	parent leftColumn width: anInteger
]
