Class {
	#name : #Jail,
	#superclass : #Object,
	#instVars : [
		'jailedPlayers'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'adding-removing spaceships' }
Jail >> confine: spaceship [

	(self isInJail: spaceship) ifFalse: [ jailedPlayers add: spaceship ].
]

{ #category : #'adding-removing spaceships' }
Jail >> free: spaceship [

	jailedPlayers remove: spaceship ifAbsent: [ Error signal: 'Spaceship is not in jail' ]
]

{ #category : #initialization }
Jail >> initialize [

	super initialize.
	jailedPlayers := OrderedCollection new.
]

{ #category : #'adding-removing spaceships' }
Jail >> isInJail: spaceship [

	^ jailedPlayers anySatisfy: [ :jailedSpaceship | jailedSpaceship = spaceship ]
]