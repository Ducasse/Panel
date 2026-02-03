Class {
	#name : 'Panelist',
	#superclass : 'Object',
	#instVars : [
		'leftColumn',
		'righColumn',
		'bottomRow',
		'topRow',
		'center',
		'extent'
	],
	#category : 'Panel',
	#package : 'Panel'
}

{ #category : 'geometry' }
Panelist class >> extent: aPoint [ 
	
	^ self new 
		extent: aPoint;
		yourself
]

{ #category : 'accessing' }
Panelist >> extent: aPoint [

	extent := aPoint.
	leftColumn inExtent: aPoint.
]

{ #category : 'accessing' }
Panelist >> initialize [ 
	
	super initialize. 
	leftColumn := LeftPanelColumn new.
]

{ #category : 'accessing' }
Panelist >> leftColumn [
	^ leftColumn
]
