Class {
	#name : 'ToRightColumnPane',
	#superclass : 'ToElement',
	#traits : 'TToElementWithResizeGrips',
	#classTraits : 'TToElementWithResizeGrips classTrait',
	#instVars : [
		'panelist',
		'topRow'
	],
	#category : 'Panel-Toplo',
	#package : 'Panel-Toplo'
}

{ #category : 'accessing' }
ToRightColumnPane >> defaultExtent [

	^ 400 @ 300
]

{ #category : 'initialization' }
ToRightColumnPane >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	self extent: self defaultExtent.
	self initializeGrips
]

{ #category : 't - element with resize grips -  initializing' }
ToRightColumnPane >> initializeGrips [

	self grips: ({
			 ToLeftResizeGrip.
			 } collect: [ :eachClass |
			 eachClass new
				 target: self;
				 yourself ]).

	self addChildren: self grips.
	self addEventHandler: (BlEventHandler
			 on: BlElementExtentChangedEvent
			 do: [ :evt | self layoutGrips.
						panelist rightColumn width: evt target width.
						topRow position: panelist topRow topLeft;
							width: panelist rowWidth - 200;
						   height: panelist topRow height.
						])
]

{ #category : 'accessing' }
ToRightColumnPane >> panelist [

	^ panelist
]

{ #category : 'accessing' }
ToRightColumnPane >> panelist: anObject [

	panelist := anObject
]

{ #category : 'accessing' }
ToRightColumnPane >> topRow [

	^ topRow
]

{ #category : 'accessing' }
ToRightColumnPane >> topRow: anObject [

	topRow := anObject
]
