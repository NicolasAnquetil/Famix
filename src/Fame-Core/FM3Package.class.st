"
A FM3PackageDescription is 
"
Class {
	#name : #FM3Package,
	#superclass : #FM3Element,
	#instVars : [
		'classes',
		'extensions'
	],
	#category : #'Fame-Core-Model'
}

{ #category : #meta }
FM3Package class >> annotation [
	<FMClass: #Package super: #FM3Element>
	<package: #FM3>

]

{ #category : #'accessing-query' }
FM3Package >> classNamed: aString [
	^ self classNamed: aString ifAbsent: [ nil ]
]

{ #category : #'accessing-query' }
FM3Package >> classNamed: aString ifAbsent: aBlock [
	^ classes byName: aString ifAbsent: aBlock
]

{ #category : #accessing }
FM3Package >> classes [
	<FMProperty: #classes type: #FM3Class opposite: #package>
	<multivalued>
	^ classes
]

{ #category : #accessing }
FM3Package >> classes: elementCollection [

	classes value: elementCollection
]

{ #category : #accessing }
FM3Package >> extensions [
	<FMProperty: #extensions type: 'FM3.Property' opposite: #package>
	<multivalued>
	
	^extensions
]

{ #category : #accessing }
FM3Package >> extensions: elementCollection [

	extensions value: elementCollection
]

{ #category : #initialization }
FM3Package >> initialize [
	super initialize.
	classes := FMMultivalueLink on: self opposite: #package:.
	extensions := FMMultivalueLink on: self opposite: #package:
]

{ #category : #testing }
FM3Package >> isFM3Package [
	^true
]

{ #category : #accessing }
FM3Package >> owner [
	"All packages are top-level (but dots are allowed in their name to fake nesting)"

	^ nil
]