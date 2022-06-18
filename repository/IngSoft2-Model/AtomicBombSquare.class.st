Class {
	#name : #AtomicBombSquare,
	#superclass : #Square,
	#category : #'IngSoft2-Model'
}

{ #category : #comparing }
AtomicBombSquare >> = anotherAtomicBombSquare [

	^ (self className match: anotherAtomicBombSquare className)
]

{ #category : #'executing effects' }
AtomicBombSquare >> applyEffectTo: spaceship from: game [

	game moveAllSpaceshipToSquareOne.
	game history add: (Event_LandsOnSquare from: spaceship landsOn: self).
]

{ #category : #comparing }
AtomicBombSquare >> hash [ 

	^ self className hash
]