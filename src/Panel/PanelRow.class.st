Class {
	#name : 'PanelRow',
	#superclass : 'Object',
	#instVars : [
		'parentWidth',
		'parentHeight',
		'height',
		'hidden',
		'parent'
	],
	#category : 'Panel-Core',
	#package : 'Panel',
	#tag : 'Core'
}

{ #category : 'host space - displaying' }
PanelRow >> hide [
	hidden := true
]

{ #category : 'accessing' }
PanelRow >> inPanel: aPanelist [

	parent := aPanelist 
]

{ #category : 'initialization' }
PanelRow >> initialize [ 

	super initialize.
	hidden := false. 
	height := 200.
]

{ #category : 'operations' }
PanelRow >> unhide [
	hidden := false
]
