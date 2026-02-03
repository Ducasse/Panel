Class {
	#name : 'TopPanelRowTest',
	#superclass : 'TestCase',
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests' }
TopPanelRowTest >> panel [

	^ Panelist new 
			extent: 1000@800;
			widthOfLeftColumn: 150;
			widthOfRightColumn: 150;
			yourself
			
]

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowBounds [

	| blp |
	blp := TopPanelRow new
				inPanel: self panel.
	
	self assert: blp bounds equals: (150@0 corner: 850@200).
	
]

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowDefaultSize [

	| blp |
	
	blp := TopPanelRow new
				inPanel: self panel.
	"default height of row is 200"
				
	self assert: blp topLeft equals: 150@0. 
	self assert: blp bottomRight equals: 850@200.
	
]

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowHide [

	| blp |
	blp := TopPanelRow new
				inPanel: self panel.
	blp height: 300.
	
	blp hide.
	
	self assert: blp topLeft equals: 150@0. 
	self assert: blp bottomRight equals: 850@0.

	blp unhide. 	
	
	self assert: blp topLeft equals: 150@0. 
	self assert: blp bottomRight equals: 850@300.
]

{ #category : 'tests' }
TopPanelRowTest >> testTopPanelRowSetItsHeight [

	| blp |
	blp := TopPanelRow new
				inPanel: self panel.
	blp height: 300.
	
	self assert: blp topLeft equals: 150@0. 
	self assert: blp bottomRight equals: 850@300.
	
]
