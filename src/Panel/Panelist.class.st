"
I'm a five part component

```
-----------------
|  |_________|  |
|  |         |  |
|  |         |  |
|  |_________|  |
|  |         |  |
-----------------
```

I have 
- a leftColumn whose width can change
- a rightColumn whose width can change
- a top row whose height can change
- a bottom row whose height can change
- a center zone


"
Class {
	#name : 'Panelist',
	#superclass : 'Object',
	#instVars : [
		'leftColumn',
		'righColumn',
		'bottomRow',
		'topRow',
		'center',
		'rightColumn',
		'widthOfLeftColumn',
		'widthOfRightColumn',
		'width',
		'height'
	],
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'geometry' }
Panelist class >> extent: aPoint [ 
	
	^ self new 
		extent: aPoint;
		yourself
]

{ #category : 'accessing' }
Panelist >> extent: aPoint [

	width := aPoint x.
	height := aPoint y.

]

{ #category : 'accessing' }
Panelist >> height [

	^ height 
]

{ #category : 'initialization' }
Panelist >> initialize [ 
	
	super initialize. 
	leftColumn := LeftPanelColumn new inPanel: self.
	rightColumn := RightPanelColumn new inPanel: self.
	topRow := TopPanelRow new inPanel: self.
]

{ #category : 'accessing' }
Panelist >> leftColumn [
	^ leftColumn
]

{ #category : 'accessing' }
Panelist >> rightColumn [
	^ rightColumn
]

{ #category : 'accessing' }
Panelist >> rowWidth [

	^ width - widthOfLeftColumn - widthOfRightColumn 
]

{ #category : 'accessing' }
Panelist >> width [
	^ width
]

{ #category : 'accessing' }
Panelist >> widthOfLeftColumn [
	^ widthOfLeftColumn
]

{ #category : 'accessing' }
Panelist >> widthOfLeftColumn: anInteger [
 
	widthOfLeftColumn := anInteger.
	leftColumn width: anInteger
]

{ #category : 'accessing' }
Panelist >> widthOfRightColumn [
	^ widthOfRightColumn
]

{ #category : 'accessing' }
Panelist >> widthOfRightColumn: anInteger [ 
	
	widthOfRightColumn := anInteger.
	rightColumn width: anInteger.	
]
