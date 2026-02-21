Class {
	#name : 'BlLeftColumnPaneElementTest',
	#superclass : 'TestCase',
	#instVars : [
		'panel',
		'sp',
		'leftColumn'
	],
	#category : 'Panel-Toplo-Element',
	#package : 'Panel-Toplo',
	#tag : 'Element'
}

{ #category : 'running' }
BlLeftColumnPaneElementTest >> setUp [

	super setUp.
	sp := BlSpace new.
	leftColumn := BlLeftColumnPaneElement new.
	panel := BlPanelistElement new.
	panel addChild: leftColumn.
	sp root addChild: panel. 
	sp pulse.
	panel leftColumn: leftColumn. 
	 	
]

{ #category : 'tests' }
BlLeftColumnPaneElementTest >> testLeftPanelColumnDefaultSize [
	
	self assert: leftColumn topLeft equals: 0@0. 
	self assert: leftColumn bottomRight equals: 200@600.
]

{ #category : 'tests' }
BlLeftColumnPaneElementTest >> testLeftPanelColumnHeight [
	
	self assert: panel height equals: 600.
	self assert: leftColumn height equals: 600
]

{ #category : 'tests' }
BlLeftColumnPaneElementTest >> testLeftPanelColumnWidth [
	
	self assert: leftColumn width equals: 200
]
