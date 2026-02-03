Class {
	#name : 'PanelistTest',
	#superclass : 'TestCase',
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'tests' }
PanelistTest >> testPanelistDefaultCreationSetSizeToLeftColumn [

	| pnlist |
	pnlist := Panelist extent: 1200 @ 800.
	self assert: pnlist leftColumn topLeft equals: 0@0.
	self assert: pnlist leftColumn bottomRight equals: 200@800.	
]
