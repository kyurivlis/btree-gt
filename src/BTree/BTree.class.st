Class {
	#name : #BTree,
	#superclass : #Object,
	#instVars : [
		'root'
	],
	#category : #BTree
}

{ #category : #create }
BTree class >> order: m [
	self assert: m > 1.
	^ self basicNew order: m; yourself
]

{ #category : #accessing }
BTree >> at: i put: o [
	^ root treeAt: i put: o.
]

{ #category : #accessing }
BTree >> isEmpty [
	^ self root isEmpty
]

{ #category : #accessing }
BTree >> isNotEmpty [
	^ self isEmpty not
]

{ #category : #accessing }
BTree >> order [
	^self root order
]

{ #category : #init }
BTree >> order: m [
	root:= BTreeLeaf order: m
]

{ #category : #accessing }
BTree >> root [
	^root
]

{ #category : #accessing }
BTree >> size [
	^ self root subtreeSize
]
