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
	^ self basicNew order: m; yourself
]

{ #category : #accessing }
BTree >> isEmpty [
	^ self root isEmpty
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
	^ self root size
]
