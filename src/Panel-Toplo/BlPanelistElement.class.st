Class {
	#name : 'BlPanelistElement',
	#superclass : 'BlElement',
	#instVars : [
		'leftColumn'
	],
	#category : 'Panel-Toplo-Element',
	#package : 'Panel-Toplo',
	#tag : 'Element'
}

{ #category : 'examples' }
BlPanelistElement class >> example [

	<script>
	| sp panel |
	sp := BlSpace new.
	panel := BlPanelistElement new.
	sp root addChild: panel. 
	sp pulse.
	sp show
]

{ #category : 'initialization' }
BlPanelistElement >> initialize [

	super initialize. 
	self height: 600.
	self width: 1000.
	
	self initializeLeftColumn
	
]

{ #category : 'initialization' }
BlPanelistElement >> initializeLeftColumn [
	
	leftColumn := BlLeftColumnPaneElement new.
	leftColumn width: self width.
	leftColumn height: self height. 
	self addChild: leftColumn. 	
]

{ #category : 'accessing' }
BlPanelistElement >> leftColumn [ 
	
	^ leftColumn
]

{ #category : 'accessing' }
BlPanelistElement >> leftColumn: aColumn [
	
	leftColumn := aColumn.
	aColumn height: self height
]
