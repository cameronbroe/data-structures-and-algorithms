# Lists

## Linked List

A singly linked list, or more commonly known as just a linked list, is a linear data structure where elements in the
structure are not stored contiguously, but instead by storing references to the next node in the list on each node. This
means that elements in a linked list could be stored anywhere, even across a network or on a file system. The first
element of the list is known as the _head_ of the list. The last node is known as the _tail_. Not all implementations
will track the tail. There are three common operations implemented for linked lists: insertion, retrieval, and deletion.

Implementation at: [linked_list.rb](linked_list.rb)

Test at: [test_linked_list.rb](../../tests/lists/test_linked_list.rb)