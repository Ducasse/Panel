"
Some possible todos:
- how to add a window in the hand?
- how to react to drag
- change color when dragging to a zone
- remove the model and migrate the tests to ToObjects.
"
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

{ #category : 'examples' }
ToPanelist class >> example [
	<script>
	
	self new frame openInSpace
]

{ #category : 'trying' }
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

{ #category : 'helpers' }
ToPanelist >> frame [

	^ ToInnerWindowPane new
		  id: #'innerWindow-pane';
		  matchParent;
		  layout: BlBasicLayout uniqueInstance;
		  yourself
 
]

{ #category : 'helpers' }
ToPanelist >> frameElement [

	^ ToInnerWindowPane new
		border: (BlBorder paint: Color blue);
		id: #'innerWindow-pane';
		layout: BlBasicLayout uniqueInstance;
		yourself
 
]

{ #category : 'initialization' }
ToPanelist >> initialize [

	super initialize. 
	panelist := Panelist extent: 1000 @ 800.
	self setPanelistVisualElements.
	
	"should disappear when removing the model and turning this class into aToElement"
"	self initializeFrame.
	
	self initializeLeftColumn.
	self initializeRightColumn.
	self initializeTopRow.
	self wiringElements."
	
]

{ #category : 'initialization' }
ToPanelist >> initializeFrame [

	frame := self frame.
	frame height: panelist height. 
	frame width: panelist width.

	
]

{ #category : 'initialization' }
ToPanelist >> initializeLeftColumn [
	
	leftColumn := self leftFrameElement
						panelist: panelist;
						position: (panelist leftColumn topLeft);
						height: panelist leftColumn parentHeight;
						width: panelist leftColumn width.
	frame addChild: leftColumn. 	
	

]

{ #category : 'initialization' }
ToPanelist >> initializeRightColumn [

	rightColumn := self rightFrameElement 
						panelist: panelist;
						position: (panelist rightColumn topLeft - (200@0));
						height: panelist rightColumn parentHeight;
						width: panelist rightColumn width.
	frame addChild: rightColumn. 
	

]

{ #category : 'initialization' }
ToPanelist >> initializeTopRow [

	topRow := self topFrameElement 
						panelist: panelist;
						position: panelist topRow topLeft;
						width: panelist rowWidth - 200;
						height: panelist topRow height.
	frame addChild: topRow. 
	
	
]

{ #category : 'initialization' }
ToPanelist >> installMenu [

	frame contextMenuBuilder: [ :win :request |
		win addItem: (ToMenuItem new
			labelText: 'Open';
			clickAction: [ 
			
				frame addChild: ToInnerWindow new  ];
			yourself) ].


"
check 

- experimentDragPreviewGameWithElementMoving


"
]

{ #category : 'helpers' }
ToPanelist >> leftFrameElement [

	^ ToLeftColumnPane new
			border: (BlBorder paint: Color blue);
		  id: #'innerWindow-pane';
		  layout: BlBasicLayout uniqueInstance;
		  yourself
 
]

{ #category : 'helpers' }
ToPanelist >> rightFrameElement [

	^ ToRightColumnPane new
			border: (BlBorder paint: Color blue);
		  id: #'innerWindow-pane';
		  layout: BlBasicLayout uniqueInstance;
		  yourself
 
]

{ #category : 'initialization' }
ToPanelist >> setPanelistVisualElements [
	"self new"
	
	frame := self frame.
	frame height: panelist height. 
	frame width: panelist width.

	self initializeLeftColumn.
	
	"leftColumn addEventFilterOn: BlDragEnterEvent do: [ :e |
		Transcript show: 'drenter'.
		leftColumn background: (Color red alpha: 0.8).
		e consume ].
	leftColumn addEventHandlerOn: BlDragEndEvent do: [ :e | 
		leftColumn addChild: e ]."
	
	
	self initializeRightColumn.
	self initializeTopRow.
	
	self wiringElements.
	
	self installMenu.
	
	
	frame openInSpace.
]

{ #category : 'helpers' }
ToPanelist >> topFrameElement [

	^ ToTopRowPane new
			border: (BlBorder paint: Color blue);
		  id: #'innerWindow-pane';
		  layout: BlBasicLayout uniqueInstance;
		  yourself
 
]

{ #category : 'initialization' }
ToPanelist >> wiringElements [
	
	leftColumn topRow: topRow.
	rightColumn topRow: topRow.
]
