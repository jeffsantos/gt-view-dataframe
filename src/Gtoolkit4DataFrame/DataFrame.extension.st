Extension { #name : #DataFrame }

{ #category : #'*Gtoolkit4DataFrame' }
DataFrame >> gtDataFrameFor: aView [
	<gtView>
	
	| list |
	list := aView columnedList
		title: 'DataFrame';
		priority: 20;
		items: [ self asArrayOfRows].
		
	 self columns doWithIndex: [ :column :index | 
    	list column: column name do: [ :aColumn | 
      	aColumn 
      	  item: [ :eachRow | (eachRow at: index) ] ] ].

	^ list
]
