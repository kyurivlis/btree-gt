Class {
	#name : #BTreeKeys,
	#superclass : #Array,
	#type : #variable,
	#category : #BTree
}

{ #category : #initialize }
BTreeKeys class >> order: m [ 
	^ self basicNew: m
]
