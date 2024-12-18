Class {
	#name : 'ScpMethodReturnTrace',
	#superclass : 'ScpReturnTrace',
	#category : 'Scopeo-TraceRecorder-Trace-Model',
	#package : 'Scopeo-TraceRecorder',
	#tag : 'Trace-Model'
}

{ #category : 'as yet unclassified' }
ScpMethodReturnTrace class >> fromTraces: aTraces startingAt: anIndex [

	(aTraces at: anIndex) ~~ #methodReturn ifTrue: [ ^ nil ].

	^ self new
		node: (aTraces at: anIndex + 1);
		object: (aTraces at: anIndex + 2);
		yourself
]

{ #category : 'as yet unclassified' }
ScpMethodReturnTrace >> addToExecution: anExecution [

	^ anExecution addMethodReturn: self
]

{ #category : 'as yet unclassified' }
ScpMethodReturnTrace >> asString [

	^ 'method return ', object asString
]

{ #category : 'as yet unclassified' }
ScpMethodReturnTrace >> isMethodReturn [

	^ true
]
