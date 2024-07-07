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
	^ (self basicNew: m) order: m; yourself
]

{ #category : #accessing }
BTreeNode >> children [
	^ self value
]

{ #category : #accessing }
BTreeNode >> isEmpty [ 
	^ (self children contains: [:x | x notNil]) not
]

{ #category : #initialize }
BTreeNode >> order: m [
	keys:= BTreeKeys order: m
]

{ #category : #accessing }
BTreeNode >> size [
	^ 1 + (self children collect: [:x|x size]) sumNumbers
]
