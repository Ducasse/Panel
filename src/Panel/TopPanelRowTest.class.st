Class {
	#name : 'TopPanelRowTest',
	#superclass : 'TestCase',
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowDefaultSize [

	| blp panel |
	
	blp := TopPanelRow new
				inPanel: (Panelist new 
					extent: 1000@800;
					widthOfLeftColumn: 150;
					widthOfRightColumn: 150;
					yourself
				).
	"default height of row is 200"
				
	self assert: blp topLeft equals: 150@0. 
	self assert: blp bottomRight equals: 850@200.
	
]
