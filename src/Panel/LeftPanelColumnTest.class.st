Class {
	#name : 'LeftPanelColumnTest',
	#superclass : 'TestCase',
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'tests - split' }
LeftPanelColumnTest >> testBottomSplit [

	| blp bottomSplit |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	bottomSplit := blp bottomSplit.
	self assert: bottomSplit topLeft equals: 0@300.
	self assert: bottomSplit bottomRight equals: 200@600.
	
	"this is a bit stupid since it is overlapping so it should be 301"
	
	
]

{ #category : 'tests - hide' }
LeftPanelColumnTest >> testHide [

	| blp |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp bottomRight equals: 200@600.
	self assert: blp topLeft equals: 0@0. 
	
	blp hide.
	self assert: blp bottomRight equals: 0@600.
	
	blp unhide.
	self assert: blp bottomRight equals: 200@600.
	
]

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

{ #category : 'tests - split' }
LeftPanelColumnTest >> testTopSplit [

	| blp topSplit |
	blp := LeftPanelColumn new
				inExtent: 1000@600.
	
	topSplit := blp topSplit.
	self assert: topSplit topLeft equals: 0@0.
	self assert: topSplit bottomRight equals: 200@300.
	
	
]
