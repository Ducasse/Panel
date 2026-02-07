Class {
	#name : 'ToPanelist',
	#superclass : 'Object',
	#instVars : [
		'panelist',
		'frame',
		'leftColumn',
		'rightColumn',
		'topRow'
	],
	#category : 'Panel-Toplo',
	#package : 'Panel-Toplo'
}

{ #category : 'as yet unclassified' }
ToPanelist >> displayFloaters [
	"self new displayFloaters"
	
	| upBtn pane upfloat downBtn downfloat |
	upBtn := ToButton new
		           labelText: 'up';
		           yourself.
	upBtn addStamp: #circle.
	upfloat := upBtn asFloatElement
		         geometry: BlCircleGeometry new;
		         yourself.
	

	downBtn := ToButton new
		           labelText: 'down';
		           yourself.
	downBtn addStamp: #circle.
	downfloat := downBtn asFloatElement
		         geometry: BlCircleGeometry new;
		         yourself.	

	downfloat placement: (ToAnchoredExplicitPlacement new constraintsAction: [ :c |
			c anchors add:
				(c anchors bottomRightAnchor on:
					 upfloat bottomLeftAnchor - (5 @ 0)) ] ).

	
	pane := ToPane new matchParent.


	upfloat attachToElement: pane.
	downfloat attachToElement: pane.
	pane openInInnerWindow
]

{ #category : 'initialization' }
ToPanelist >> frame [

	^ ToInnerWindowPane new
		  id: #'innerWindow-pane';
		  matchParent;
		  layout: BlBasicLayout uniqueInstance;
		  yourself
 
]

{ #category : 'initialization' }
ToPanelist >> initialize [

	super initialize. 
	panelist := Panelist extent: 1000 @800.
	self setPanelistVisualElements.
]

{ #category : 'initialization' }
ToPanelist >> setPanelistVisualElements [
	"self new"
	
	frame := self frame.
	frame height: panelist height. 
	frame width: panelist width.
	

	leftColumn := ToInnerWindow new 
						position: (panelist leftColumn topLeft);
						height: panelist leftColumn parentHeight;
						width: panelist leftColumn width.
	frame addChild: leftColumn. 	
	
	rightColumn := ToInnerWindow new 
						position: (panelist rightColumn topLeft - (200@0));
						height: panelist rightColumn parentHeight;
						width: panelist rightColumn width.
	frame addChild: rightColumn. 
	
	topRow := ToInnerWindow new 
						position: panelist topRow topLeft;
						width: panelist rowWidth ;
						width: panelist topRow height.
	frame addChild: topRow. 
	
	frame openInSpace.
]
