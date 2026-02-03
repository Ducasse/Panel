Class {
	#name : 'Panelist',
	#superclass : 'Object',
	#instVars : [
		'leftColumn',
		'righColumn',
		'bottomRow',
		'topRow',
		'center',
		'extent',
		'rightColumn'
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
	rightColumn inExtent: aPoint.
]

{ #category : 'accessing' }
Panelist >> initialize [ 
	
	super initialize. 
	leftColumn := LeftPanelColumn new.
	rightColumn := RightPanelColumn new
]

{ #category : 'accessing' }
Panelist >> leftColumn [
	^ leftColumn
]

{ #category : 'accessing' }
Panelist >> rightColumn [
	^ rightColumn
]
