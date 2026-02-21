Class {
	#name : 'ToRowPane',
	#superclass : 'ToElement',
	#traits : 'TToElementWithResizeGrips',
	#classTraits : 'TToElementWithResizeGrips classTrait',
	#instVars : [
		'panelist',
		'topRow'
	],
	#category : 'Panel-Toplo-Toplo',
	#package : 'Panel-Toplo',
	#tag : 'Toplo'
}

{ #category : 'accessing' }
ToRowPane >> defaultExtent [

	^ 400 @ 300
]

{ #category : 'initialization' }
ToRowPane >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	self extent: self defaultExtent.
	self initializeGrips
]

{ #category : 't - element with resize grips -  initializing' }
ToRowPane >> initializeGrips [

	self grips: ({
			 self gripClass
			 } collect: [ :eachClass |
			 eachClass new
				 target: self;
				 yourself ]).

	self addChildren: self grips.
	self addEventHandler: (BlEventHandler
			 on: BlElementExtentChangedEvent
			 do: [ :evt | 
						self layoutGrips.
						self updateHeight: evt target height. 
						])
]
