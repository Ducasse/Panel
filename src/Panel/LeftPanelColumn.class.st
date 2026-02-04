Class {
	#name : 'LeftPanelColumn',
	#superclass : 'PanelColumn',
	#instVars : [
		'verticalSplitY'
	],
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'accessing' }
LeftPanelColumn >> bottomRight [
	
	^ hidden 
		ifTrue: [ 0@ self parentHeight ]
		ifFalse: [ width @ self parentHeight ]
]

{ #category : 'accessing' }
LeftPanelColumn >> bottomSplit [
	"does not make much sense to be called in hidden mode"
		
	^ 0 @ (self verticalSplitY) corner: self bottomRight
]

{ #category : 'accessing' }
LeftPanelColumn >> splitVerticalPosition: aPoint [

	verticalSplitY := aPoint y
]

{ #category : 'accessing' }
LeftPanelColumn >> topLeft [

	^ 0 @ 0
]

{ #category : 'accessing' }
LeftPanelColumn >> topSplit [
	"does not make much sense to be called in hidden mode"
	
	^ self topLeft corner: width @ (self verticalSplitY)
]

{ #category : 'accessing' }
LeftPanelColumn >> verticalSplitY [

	^ verticalSplitY ifNil: [ verticalSplitY := parent height / 2 ]
]
