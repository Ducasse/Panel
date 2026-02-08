Class {
	#name : 'ToColumnPane',
	#superclass : 'ToElement',
	#traits : 'TToElementWithResizeGrips',
	#classTraits : 'TToElementWithResizeGrips classTrait',
	#instVars : [
		'topRow',
		'panelist'
	],
	#category : 'Panel-Toplo',
	#package : 'Panel-Toplo'
}

{ #category : 'initialization' }
ToColumnPane >> defaultExtent [

	^ 400 @ 300
]

{ #category : 'initialization' }
ToColumnPane >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	self extent: self defaultExtent.
	self initializeGrips
]

{ #category : 't - element with resize grips -  initializing' }
ToColumnPane >> initializeGrips [

	self grips: ({ self gripClass } 
		collect: [ :eachClass |
			 eachClass new
				 target: self;
				 yourself ]).

	self addChildren: self grips.
	self addEventHandler: (BlEventHandler
			 on: BlElementExtentChangedEvent
			 do: [ :evt | 
						self layoutGrips.
						self updateWidth: evt target width.
						self repositionTopRow 
						])
]

{ #category : 'accessing' }
ToColumnPane >> panelist [

	^ panelist
]

{ #category : 'accessing' }
ToColumnPane >> panelist: anObject [

	panelist := anObject
]

{ #category : 'accessing' }
ToColumnPane >> topRow [

	^ topRow
]

{ #category : 'accessing' }
ToColumnPane >> topRow: anObject [

	topRow := anObject
]
