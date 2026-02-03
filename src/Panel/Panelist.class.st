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
	"we could revisit the fact that we push the extent to column and instead we could pass the receiver
	and it would get requested to get its width and height."
	leftColumn inExtent: aPoint.
	rightColumn inExtent: aPoint.
	
]

{ #category : 'initialization' }
Panelist >> initialize [ 
	
	super initialize. 
	
	"may be we should pass the receiver to its component
	a row needs to know the different width of the columns so we pass it the receiver and it can ask it."
	leftColumn := LeftPanelColumn new.
	rightColumn := RightPanelColumn new.
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
