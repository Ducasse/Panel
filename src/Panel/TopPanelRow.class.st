Class {
	#name : 'TopPanelRow',
	#superclass : 'PanelRow',
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
TopPanelRow >> bottomRight [
	
	^ hidden 
		ifTrue: [  parent width - parent widthOfRightColumn @ 0 ]
		ifFalse: [ parent width - parent widthOfRightColumn @ height ]
		
]

{ #category : 'accessing' }
TopPanelRow >> bounds [
	
	^ self topLeft corner: self bottomRight
]

{ #category : 'accessing' }
TopPanelRow >> height [

	^ height 
]

{ #category : 'accessing' }
TopPanelRow >> height: anInteger [
	
	height := anInteger
]

{ #category : 'split' }
TopPanelRow >> leftSplit [
	
	^ (parent widthOfLeftColumn @ 0) corner: (parent rowWidth /2) @ height
]

{ #category : 'split' }
TopPanelRow >> rightSplit [
	
	^ (parent rowWidth /2) @0 corner: parent rowWidth @ height
]

{ #category : 'accessing' }
TopPanelRow >> topLeft [

	^ parent widthOfLeftColumn @ 0
]
