import unittest
from magic_methods_hw import *


class LinkedListTest(unittest.TestCase):
    def setUp(self):
        self.lst = LinkedList([1, 2, 3])
        
    def test_init(self):
        linked_list = LinkedList()
        count = LinkedList().count
        values = list(linked_list)
        self.assertListEqual(values, [])

    def test_append(self):
        linked_list = LinkedList()
        linked_list.head = Element(1)
        linked_list.append(2)
        print(linked_list.head.next == 2)

    def test_str(self):
        lst_1 = LinkedList()
        self.assertEqual(str(lst_1), '||')
        lst_2 = self.lst
        self.assertEqual(str(lst_2), '|1 -> 2 -> 3|')

    def test_iter(self):
        lst_1 = LinkedList()
        lst_1.append("changed")
        lst_1.append("new")
        iterator = lst_1.__iter__()
        self.assertEqual(iterator.__next__(), 'changed')
        self.assertEqual(iterator.__next__(), 'new')

    def test_len(self):
        lst_1 = LinkedList()
        self.assertTrue(isinstance(lst_1.__len__(), int))
        self.assertEqual(lst_1.__len__(), lst_1.count) 

    def test_getitem(self):
        self.assertEqual(self.lst.__getitem__(2), 3)

    def test_setitem(self):
        lst_1 = self.lst.__setitem__(2,'changed')
        self.assertEqual(str(self.lst), "|1 -> 2 -> changed|")

    def test_delitem(self):
        lst_1 = self.lst.__delitem__(1)
        self.assertEqual(str(self.lst), "|1 -> 3|")   

    def test_bool(self):
        lst_1 = [1]
        self.assertEqual(LinkedList(lst_1).__len__(), 1)

    def test_add(self):
        lst_1 = LinkedList([2, 8, 9])
        lst_2 = LinkedList([4, 5, 10])
        con = lst_1.__add__(lst_2)
        self.assertEqual(str(con), "|2 -> 8 -> 9 -> 4 -> 5 -> 10|")       

    def test_eq(self):
        lst_1 = LinkedList([1, 2, 3])
        lst_2 = LinkedList([1, 2, 3])        
        self.assertEqual(lst_1, lst_2)
        self.assertFalse(lst_1 != lst_2)

if __name__ == '__main__':
    unittest.main()

    