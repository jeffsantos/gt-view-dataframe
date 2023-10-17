Class {
	#name : #BaselineOfGToolkit4DataFrame,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkit4DataFrame
}

{ #category : #accessing }
BaselineOfGToolkit4DataFrame >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
			spec package: 'GToolkit4DataFrame' with: [ spec requires: #(DataFrame) ] ]
]
