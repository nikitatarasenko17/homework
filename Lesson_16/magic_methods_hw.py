"""
Реализуйте необходимые методы для того, чтобы следующий код выполнился

Должна быть возможность инициализировать LinkedList с помощью списка, или пустым.
"""

class Element(object):
    def __init__(self, value=0, nxt=None):
        self.val = value
        self.next = nxt

            
class LinkedList(object):
    def __init__(self, seq=None):
        self.head = None 
        self.count = 0
        if seq is not None:
            self.head = Element(seq[0])
            self.count += 1
            t = self.head
            for val in seq[1:]:
                t.next = Element(val)
                t = t.next
                self.count += 1 # count 0 и head none

    def append(self, val):
        if self.head is None:
            self.head = Element(val)
            return

        e = self.head
        while e.next is not None:
            e = e.next
        e.next = Element(val)   
        self.count +=1

    def __str__(self):
        l = '|'
        e = self.head
        if e is not None:
            while e is not None:
                l += str(e.val)
                l += ' -> '
                e = e.next  
            l = l[:-4]  
        else:
            pass       
        l += '|'   
        return l

    def __iter__(self):
        self.current = self.head
        return self

    def __next__(self):
        if self.current is None:
            raise StopIteration
        else:
            curr = self.current
            self.current = self.current.next
        return curr.val

    def __len__(self):
        return self.count

    def __getitem__(self, index):
        if len(self) <= index:
            raise IndexError

        curr = self.head
        for i in range(index):
            curr = curr.next
        return curr.val

    def __setitem__(self, index, value):
        if index > self.count - 1:
            raise Exception("Index out of range.")
        curr = self.head
        for n in range(index):
            curr = curr.next
        curr.val = value

    def __delitem__(self, key):
        temp = self.head
        if (temp is not None):
            if (temp.val == self[key]):
                self.head = temp.next
                temp = None
                return

        while(temp is not None):
            if temp.val == self[key]:
                break
            prev = temp
            temp = temp.next
        if (temp == None):
            return
        prev.next = temp.next
        temp = None
    
    def __bool__(self):
        if self.__len__() == 0:
            return False
        else:
            return True

    def __add__(self, element):
        lst = LinkedList()
        for i in self:
            lst.append(i)
        for t in element:
            lst.append(t)
        return lst

    def __eq__(self, other):
        temp = self.head
        cur = other.head
        while temp and cur:
            if temp.val != cur.val:
                return False
            temp = temp.next
            cur = cur.next
        if not temp and not cur:
            return True
        else:
            return False

    
ll = LinkedList()
ll2 = LinkedList([1, 2, 3])
print(ll)
# empty list should be represented as two pipes (vertical lines)
# || 

print(ll2)
# |1 -> 2 -> 3|

ll2.append('new')
print(ll2)
# |1 -> 2 -> 3 -> 'new'|

print(len(ll2))
# 4

print(ll2[2])
# 3

ll2[2] = 'changed'
print(ll2)
# |1 -> 2 -> 'changed' -> 'new'|

del ll2[1]
print(ll2)
# |1 -> 'changed' -> 'new'|

print('truthy' if ll else 'falsy')
# falsy

print('truthy' if ll2 else 'falsy')
# truthy

ll3 = LinkedList([5, 6])
print(ll2 + ll3)
# |1 -> 'changed' -> 'new' -> 5 -> 6|

ll4 = LinkedList([1, 'changed', 'new'])
print('equal' if ll2 == ll4 else 'not equal')
# equal

print('not equal' if ll2 != ll3 else 'equal')
# not equal

# Если предыдущего покажется маловато, то вот со звездочкой на десерт:
for i in ll2:
    print(i)



