Class {
	#name : #BaselineOfBTree,
	#superclass : #BaselineOf,
	#category : #BaselineOfBTree
}

{ #category : #loading }
BaselineOfBTree class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'btree' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfBTree >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'BTree'
		]
]
