Class {
	#name : 'LeftPanelColumnTest',
	#superclass : 'TestCase',
	#instVars : [
		'blp'
	],
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests' }
LeftPanelColumnTest >> panel [

	^ Panelist new 
			extent: 1000@600;
			widthOfLeftColumn: 150;
			widthOfRightColumn: 150;
			yourself
			
]

{ #category : 'tests' }
LeftPanelColumnTest >> setUp [

	super setUp.
	blp := LeftPanelColumn new	inPanel: self panel

]

{ #category : 'tests - split' }
LeftPanelColumnTest >> testBottomSplit [
	
	| bottomSplit |
	bottomSplit := blp bottomSplit.
	self assert: bottomSplit topLeft equals: 0@300.
	self assert: bottomSplit bottomRight equals: 200@600.
	
	"this is a bit stupid since it is overlapping so it should be 301"
	
	
]

{ #category : 'tests - hide' }
LeftPanelColumnTest >> testHide [
	
	self assert: blp bottomRight equals: 200@600.
	self assert: blp topLeft equals: 0@0. 
	
	blp hide.
	self assert: blp bottomRight equals: 0@600.
	
	blp unhide.
	self assert: blp bottomRight equals: 200@600.
	
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnBounds [
	
	self assert: blp bounds equals: (0@0 corner: 200@600).
	
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnDefaultSize [
	
	self assert: blp bottomRight equals: 200@600.
	self assert: blp topLeft equals: 0@0. 
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnExtent [
	
	self assert: blp extent equals: 200@600.
	
]

{ #category : 'tests' }
LeftPanelColumnTest >> testLeftPanelColumnSetItsWidth [

	blp width: 300.
	
	self assert: blp bottomRight equals: 300@600.
	self assert: blp topLeft equals: 0@0. 
]

{ #category : 'tests - split' }
LeftPanelColumnTest >> testSplitProportionChangesBottomSplit [
	
	| bottomSplit |
	blp splitVerticalPosition: 0@100.
	"We get a position because this may be what a widget will give us"
	bottomSplit := blp bottomSplit. 
	
	self assert: bottomSplit topLeft equals: 0@100.
	self assert: bottomSplit bottomRight equals: 200@600.
	
	
]

{ #category : 'tests - split' }
LeftPanelColumnTest >> testSplitProportionChangesTopSplit [
	
	| topSplit |
	blp splitVerticalPosition: 0@100.
	"We get a position because this may be what a widget will give us"
	topSplit := blp topSplit. 
	
	"always fixed"
	self assert: topSplit topLeft equals: 0@0.
	
	self assert: topSplit bottomRight equals: 200@100.
	
	
]

{ #category : 'tests - split' }
LeftPanelColumnTest >> testTopSplit [
	
	| topSplit |
	topSplit := blp topSplit.
	self assert: topSplit topLeft equals: 0@0.
	self assert: topSplit bottomRight equals: 200@300.
	
	
]
