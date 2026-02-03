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
TopPanelRow >> height: anInteger [

	height := anInteger
]

{ #category : 'accessing' }
TopPanelRow >> topLeft [

	^ parent widthOfLeftColumn @ 0
]
