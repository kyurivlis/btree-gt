Class {
	#name : #BTreeLeaf,
	#superclass : #BTreeNode,
	#type : #variable,
	#category : #BTree
}

{ #category : #create }
BTreeLeaf class >> order: m [
	^(self basicNew: m-1) order: m; yourself
]

{ #category : #accessing }
BTreeLeaf >> order [
	^ self size + 1

]

{ #category : #accessing }
BTreeLeaf >> subtreeSize [
	^1
]
