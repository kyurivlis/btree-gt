Class {
	#name : #BTreeNode,
	#superclass : #Array,
	#type : #variable,
	#instVars : [
		'keys'
	],
	#category : #BTree
}

{ #category : #create }
BTreeNode class >> order: m [ 
	^(self basicNew: m) order: m; yourself
]

{ #category : #accessing }
BTreeNode >> children [
	^ self value
]

{ #category : #accessing }
BTreeNode >> isEmpty [ 
	^ (self children contains: [:x | x notNil]) not
]

{ #category : #accessing }
BTreeNode >> keys [
	^keys
]

{ #category : #accessing }
BTreeNode >> order [
	^ self subclassResponsibility
]

{ #category : #initialize }
BTreeNode >> order: m [
	keys:= BTreeKeys order: m
]

{ #category : #accessing }
BTreeNode >> subtreeSize [
	^ self subclassResponsibility
]

{ #category : #accessing }
BTreeNode >> treeAt: i put: o [
	^ self subclassResponsibility
]
