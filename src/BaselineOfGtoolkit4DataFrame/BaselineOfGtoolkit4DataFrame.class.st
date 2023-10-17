Class {
	#name : #BaselineOfGtoolkit4DataFrame,
	#superclass : #Object,
	#category : #BaselineOfGtoolkit4DataFrame
}

{ #category : #accessing }
BaselineOfGtoolkit4DataFrame >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec baseline: 'DataFrame' with: [ spec repository: 'github://PolyMathOrg/DataFrame/src' ].
			spec package: 'GToolkit4DataFrame' with: [ spec requires: #(DataFrame) ] ]
]
