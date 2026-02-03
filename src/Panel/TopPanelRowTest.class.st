Class {
	#name : 'TopPanelRowTest',
	#superclass : 'TestCase',
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowDefaultSize [

	| blp |
	blp := TopPanelRow new
				inPanel: (Panelist new 
					extent: 1000@800;
					widthOfLeftColumn: 150;
					widthOfRightColumn: 150;
					yourself
				).
				
	self assert: blp topLeft equals: 800@0. 
	self assert: blp bottomRight equals: 1000@600.
	
]
