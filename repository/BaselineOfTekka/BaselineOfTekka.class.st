Class {
	#name : #BaselineOfTekka,
	#superclass : #BaselineOf,
	#category : #BaselineOfTekka
}

{ #category : #baselines }
BaselineOfTekka >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			self setUpDependencies: spec.
			spec
				package: 'Tekka-Core' with: [ spec requires: 'OSSubprocess' ];
				package: 'Tekka-Extensions-GoogleIME' with: [ spec requires: 'Tekka-Core' ].
			spec group: 'default' with: #('Tekka-Core').
			spec group: 'Tekkazan' with: #('Tekka-Core' 'Tekka-Extensions-GoogleIME') ]
]

{ #category : #initialization }
BaselineOfTekka >> setUpDependencies: spec [
	spec 
		baseline: 'OSSubprocess'
			with: [spec repository: 'github://pharo-contributions/OSSubprocess:master/repository']

]
