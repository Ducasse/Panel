Class {
	#name : 'LeftPanelColumnTest',
	#superclass : 'TestCase',
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnBounds [

	| blp |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp bounds equals: (0@0 corner: 200@600).
	
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnDefaultSize [

	| blp |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp bottomRight equals: 200@600.
	self assert: blp topLeft equals: 0@0. 
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnExtent [

	| blp |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp extent equals: 200@600.
	
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnSetItsWidth [

	| blp |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	blp width: 300.
	
	self assert: blp bottomRight equals: 300@600.
	self assert: blp topLeft equals: 0@0. 
]
