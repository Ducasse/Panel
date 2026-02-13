Class {
	#name : 'RightPanelColumn',
	#superclass : 'PanelColumn',
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
RightPanelColumn >> bottomRight [

	^ self parentWidth @ self parentHeight 
]

{ #category : 'accessing' }
RightPanelColumn >> bottomSplit [
	
	^ (self parentWidth - width) @ (self verticalSplitY ) corner: self bottomRight
]

{ #category : 'accessing' }
RightPanelColumn >> topLeft [
	
	^ hidden 
		ifTrue: [ self parentWidth @ 0]
		ifFalse: [ (self parentWidth - width) @ 0 ]

]

{ #category : 'accessing' }
RightPanelColumn >> topSplit [
	

	^ self topLeft corner: self parentWidth @ (self verticalSplitY )
]
