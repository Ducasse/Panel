Class {
	#name : 'ToLeftColumnPane',
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

{ #category : 'initialization' }
ToLeftColumnPane >> defaultExtent [

	^ 400 @ 300
]

{ #category : 'initialization' }
ToLeftColumnPane >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	self extent: self defaultExtent.
	self initializeGrips
]

{ #category : 'initialization' }
ToLeftColumnPane >> initializeGrips [

	self grips: ({
			 ToRightResizeGrip.
			 } collect: [ :eachClass |
			 eachClass new
				 target: self;
				 yourself ]).

	self addChildren: self grips.
	self addEventHandler: (BlEventHandler
			 on: BlElementExtentChangedEvent
			 do: [ :evt | self layoutGrips.
						panelist leftColumn width: evt target width.
						topRow position: panelist topRow topLeft;
							width: panelist rowWidth - 200;
						   height: panelist topRow height.
						])
]

{ #category : 'accessing' }
ToLeftColumnPane >> panelist [

	^ panelist
]

{ #category : 'accessing' }
ToLeftColumnPane >> panelist: anObject [

	panelist := anObject
]

{ #category : 'accessing' }
ToLeftColumnPane >> topRow [

	^ topRow
]

{ #category : 'accessing' }
ToLeftColumnPane >> topRow: anObject [

	topRow := anObject
]
