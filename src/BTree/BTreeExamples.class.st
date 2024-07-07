Class {
	#name : #BTreeExamples,
	#superclass : #Object,
	#instVars : [
		't'
	],
	#category : #BTree
}

{ #category : #accessing }
BTreeExamples >> smallest [
	<gtExample>
	t:=BTree order:1.
	self assert: t size equals: 1; assert: t isEmpty.
	^t
]
