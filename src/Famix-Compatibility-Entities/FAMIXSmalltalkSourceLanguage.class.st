Class {
	#name : #FAMIXSmalltalkSourceLanguage,
	#superclass : #FAMIXSourceLanguage,
	#category : #'Famix-Compatibility-Entities-Entities'
}

{ #category : #meta }
FAMIXSmalltalkSourceLanguage class >> annotation [

	<FMClass: #SmalltalkSourceLanguage super: #FAMIXSourceLanguage>
	<package: #FAMIX>
	<generated>
	^self
]

{ #category : #testing }
FAMIXSmalltalkSourceLanguage >> isSmalltalk [
	^ true
]
