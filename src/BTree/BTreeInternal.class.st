Class {
	#name : #BTreeInternal,
	#superclass : #BTreeNode,
	#type : #variable,
	#category : #BTree
}

{ #category : #accessing }
BTreeInternal >> at: i put: o [
"todo"
	keys withIndexDo: [:gi :li | gi isNil]
]

{ #category : #accessing }
BTreeInternal >> order [
	^ self size
]

{ #category : #accessing }
BTreeInternal >> subtreeSize [
	^ 1 + (self children collect: [:x|x subtreeSize]) sumNumbers
]
