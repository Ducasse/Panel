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

	frame := self frameElement.
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
	
	"leftColumn addEventHandlerOn: BlDropEvent do: [ :event |
		| source target |
		source := event gestureSource.
		target := event target.
		event consumed: true.
		source 
			background: (Color blue alpha: 0.8);
			height: target height;
			width: target width. 
		target background: Color yellow.
		source removeFromParent.
      target addChild: source ].
"

	
]

{ #category : 'initialization' }
ToPanelist >> initializeRightColumn [

	rightColumn := self rightFrameElement 
						panelist: panelist;
						position: panelist rightColumn topLeft - (200@0);
						height: panelist rightColumn parentHeight;
						width: panelist rightColumn width.
	frame addChild: rightColumn. 
	
	"rightColumn addEventHandlerOn: BlDropEvent do: [ :event |
		| source target |
		source := event gestureSource.
		target := event target.
		event consumed: true.
		source removeFromParent.
      target addChild: source.
		source 
			background: (Color blue alpha: 0.8);
			height: target height;
			width: target width. 
		target panelist rightColumn topLeft traceCr.
		target background: Color yellow.
		]."

	

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
		win 
			addItem: (ToMenuItem new
			labelText: 'Open';
			clickAction: [ 
				| w |
				w := ToInnerWindow new.
				w extent: 100@200.  
				w position: frame bounds center.
				w addEventHandler: BlDragHandler new.
				frame addChild: w.
			  ]);
			addItem: (ToMenuItem new
			labelText: 'Open simple ';
			clickAction: [ 
				| b |
				b := BlElement new
					background: Color red;
					extent: 50@50;
					addEventHandler: BlDragHandler new;
					position: frame bounds center.
				frame addChild: b.
			  ]);
			yourself ].


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
	
	self initializeFrame.

	self initializeLeftColumn.
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
