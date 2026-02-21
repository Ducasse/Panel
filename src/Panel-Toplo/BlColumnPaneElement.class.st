Class {
	#name : 'BlColumnPaneElement',
	#superclass : 'BlElement',
	#traits : 'TToElementWithResizeGrips',
	#classTraits : 'TToElementWithResizeGrips classTrait',
	#instVars : [
		'topRow',
		'panelist'
	],
	#category : 'Panel-Toplo-Element',
	#package : 'Panel-Toplo',
	#tag : 'Element'
}

{ #category : 'initialization' }
BlColumnPaneElement >> defaultExtent [

	^ 400 @ 300
]

{ #category : 'initialization' }
BlColumnPaneElement >> initialize [

	super initialize.
	self layout: BlLinearLayout vertical.
	self extent: self defaultExtent.
	self border: (BlBorder paint: Color blue).
	self initializeGrips
]

{ #category : 't - element with resize grips -  initializing' }
BlColumnPaneElement >> initializeGrips [

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
BlColumnPaneElement >> panelist [

	^ panelist
]

{ #category : 'accessing' }
BlColumnPaneElement >> panelist: anObject [

	panelist := anObject
]

{ #category : 'accessing' }
BlColumnPaneElement >> parentHeight [

	^ self parent height
]

{ #category : 'accessing' }
BlColumnPaneElement >> topRow [

	^ topRow
]

{ #category : 'accessing' }
BlColumnPaneElement >> topRow: anObject [

	topRow := anObject
]
