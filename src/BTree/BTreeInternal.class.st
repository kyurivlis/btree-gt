Class {
	#name : #BTreeInternal,
	#superclass : #BTreeNode,
	#type : #variable,
	#category : #BTree
}

{ #category : #create }
BTreeInternal class >> order: m [
	^(self basicNew: m) order: m; yourself
]

{ #category : #accessing }
BTreeInternal >> order [
	^ self size
]

{ #category : #accessing }
BTreeInternal >> subtreeSize [
	^ 1 + (self children collect: [:x|x subtreeSize]) sumNumbers
]
