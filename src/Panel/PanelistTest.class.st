Class {
	#name : 'PanelistTest',
	#superclass : 'TestCase',
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests' }
PanelistTest >> testPanelistDefaultCreationSetSizeToLeftColumn [

	| pnlist |
	pnlist := Panelist extent: 1200 @ 800.
	self assert: pnlist leftColumn topLeft equals: 0@0.
	self assert: pnlist leftColumn bottomRight equals: 200@800.	
]

{ #category : 'tests' }
PanelistTest >> testPanelistDefaultCreationSetSizeToRightColumn [

	| pnlist |
	pnlist := Panelist extent: 1200 @ 800.
	self assert: pnlist rightColumn topLeft equals: 1000@0.
	self assert: pnlist rightColumn bottomRight equals: 1200@800.	
]
