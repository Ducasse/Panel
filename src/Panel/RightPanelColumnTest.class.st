Class {
	#name : 'RightPanelColumnTest',
	#superclass : 'TestCase',
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'tests - split' }
RightPanelColumnTest >> testBottomSplit [

	| blp bottomSplit |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	
	bottomSplit := blp bottomSplit.
	self assert: bottomSplit topLeft equals: 800@300.
	self assert: bottomSplit bottomRight equals: 1000@600.
	
	"this is a bit stupid since it is overlapping so it should be 301"
	
	
]

{ #category : 'tests - hide' }
RightPanelColumnTest >> testHide [

	| blp |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	
	blp hide.
	self assert: blp topLeft equals: 1000@0.
	self assert: blp bottomRight equals: 1000@600.
	
	
	blp unhide.
	self assert: blp topLeft equals: 800@0.
	self assert: blp bottomRight equals: 1000@600.
	
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnBounds [

	| blp |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp bounds equals: (800@0 corner: 1000@600)
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnDefaultSize [

	| blp |
	blp := RightPanelColumn new
				inExtent: 1000@600.
				
	self assert: blp topLeft equals: 800@0. 
	self assert: blp bottomRight equals: 1000@600.
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnExtent [

	| blp |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	
	self assert: blp extent equals: 200@600.
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnSetItsWidth [

	| blp |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	blp width: 300.
	
	self assert: blp topLeft equals: 700@0. 
	self assert: blp bottomRight equals: 1000@600.
	
]

{ #category : 'tests - split' }
RightPanelColumnTest >> testTopSplit [

	| blp topSplit |
	blp := RightPanelColumn new
				inExtent: 1000@600.
	
	topSplit := blp topSplit.
	self assert: topSplit topLeft equals: 800@0.
	self assert: topSplit bottomRight equals: 1000@300.
	
	
	
]
