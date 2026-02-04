Class {
	#name : 'RightPanelColumnTest',
	#superclass : 'TestCase',
	#instVars : [
		'blp'
	],
	#category : 'Panel-Tests',
	#package : 'Panel',
	#tag : 'Tests'
}

{ #category : 'tests - split' }
RightPanelColumnTest >> panel [

	^ Panelist new 
			extent: 1000@600;
			widthOfLeftColumn: 150;
			widthOfRightColumn: 150;
			yourself
			
]

{ #category : 'tests - hide' }
RightPanelColumnTest >> setUp [

	super setUp.
	blp := RightPanelColumn new inPanel: self panel.
	
	
]

{ #category : 'tests - split' }
RightPanelColumnTest >> testBottomSplit [
	
	| bottomSplit |
	bottomSplit := blp bottomSplit.
	self assert: bottomSplit topLeft equals: 800@300.
	self assert: bottomSplit bottomRight equals: 1000@600.
	
	"this is a bit stupid since it is overlapping so it should be 301"
	
	
]

{ #category : 'tests - hide' }
RightPanelColumnTest >> testHide [
	
	blp hide.
	self assert: blp topLeft equals: 1000@0.
	self assert: blp bottomRight equals: 1000@600.
	
	
	blp unhide.
	self assert: blp topLeft equals: 800@0.
	self assert: blp bottomRight equals: 1000@600.
	
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnBounds [
	
	self assert: blp bounds equals: (800@0 corner: 1000@600)
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnDefaultSize [
				
	self assert: blp topLeft equals: 800@0. 
	self assert: blp bottomRight equals: 1000@600.
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnExtent [

	
	self assert: blp extent equals: 200@600.
	
]

{ #category : 'tests' }
RightPanelColumnTest >> testRightPanelColumnSetItsWidth [

	blp width: 300.
	
	self assert: blp topLeft equals: 700@0. 
	self assert: blp bottomRight equals: 1000@600.
	
]

{ #category : 'tests - split' }
RightPanelColumnTest >> testTopSplit [
	
	| topSplit |
	topSplit := blp topSplit.
	self assert: topSplit topLeft equals: 800@0.
	self assert: topSplit bottomRight equals: 1000@300.
	
	
	
]
