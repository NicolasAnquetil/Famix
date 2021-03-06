Trait {
	#name : #FamixTWithPackages,
	#instVars : [
		'#packages => FMMany type: #FamixTPackage opposite: #packageOwner'
	],
	#category : #'Famix-Traits-Package'
}

{ #category : #meta }
FamixTWithPackages classSide >> annotation [

	<FMClass: #TWithPackages super: #Object>
	<package: #'Famix-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixTWithPackages >> addPackage: anObject [
	packages add: anObject

]

{ #category : #accessing }
FamixTWithPackages >> packages [
	"Relation named: #packages type: #FamixTPackage opposite: #packageOwner"

	<generated>
	<derived>
	^ packages
]

{ #category : #accessing }
FamixTWithPackages >> packages: anObject [

	<generated>
	packages value: anObject
]
