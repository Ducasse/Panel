Class {
	#name : 'TopPanelRow',
	#superclass : 'PanelRow',
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
TopPanelRow >> bottomRight [
	
	^ parent width - parent widthOfRightColumn @ height
]

{ #category : 'accessing' }
TopPanelRow >> inPanel: aPanelist [

	parent := aPanelist 
]

{ #category : 'initialization' }
TopPanelRow >> initialize [ 

	super initialize.
	hidden := false. 
	height := 200.
]

{ #category : 'accessing' }
TopPanelRow >> topLeft [

	^ parent widthOfLeftColumn @ 0
]
