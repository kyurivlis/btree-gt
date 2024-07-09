Class {
	#name : #BTreeExamples,
	#superclass : #Object,
	#instVars : [
		't'
	],
	#category : #BTree
}

{ #category : #accessing }
BTreeExamples >> atput [
	<gtExample>
	self assert: (t at: 1 put: 'a') equals: 'a'.
	^ t
]

{ #category : #accessing }
BTreeExamples >> initialize [
	t := BTree order: 5.
]

{ #category : #accessing }
BTreeExamples >> smallest [
	<gtExample>
	t:=BTree order:2.
	t at:1 put:'a'.
	self assert: t size equals: 1; assert: t isNotEmpty; assert: t order equals: 2.
	^t
]

{ #category : #accessing }
BTreeExamples >> smallestEmpty [
	<gtExample>
	t:=BTree order:2.
	self assert: t size equals: 1; assert: t isEmpty; assert: t order equals: 2; 
	assert: (t root keys isMemberOf: BTreeKeys).
	^t
]
