Class {
	#name : #BTreeLeaf,
	#superclass : #BTreeNode,
	#type : #variable,
	#category : #BTree
}

{ #category : #create }
BTreeLeaf class >> order: m [
	^super order: m -1
]

{ #category : #accessing }
BTreeLeaf >> order [
	^ self size + 1

]

{ #category : #accessing }
BTreeLeaf >> subtreeSize [
	^1
]

{ #category : #accessing }
BTreeLeaf >> treeAt: i put: o [
	keys withIndexDo: [:ti :k|((ti isNil) | (ti = i)) ifTrue: [keys at: k put: i. self at: i put: o. ^o]] 
]
