# Python - Classes and Objects

**This directory contains files that can be tested for Python - Classes and Objects .**

> [!IMPORTANT]
> Make the Python files executables using the following command:
> `chmod +x <filename>`

## Tasks

> [!NOTE]
> If there aren't any main.py files provided for a task, use test files to run the program.

0. - [x] **My first square.**

- :file_folder: : `0-square.py`: Create an empty class `Square` that defines a square

1. - [x] **Square with size.**

- :file_folder: : `1-square.py`: Create a class `Square` that defines a square by: (based on `0-square.py`)
  - Private instance attribute: `size`
  - Instantiation with `size` (no type/value verification)

2. - [x] **Size validation.**

- :file_folder: : `2-square.py`: Create a class `Square` that defines a square by: (based on `1-square.py`)
  - Private instance attribute: `size`
  - Instantiation with optional `size`:`def __init__(self, size=0):`
    - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
    - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`

3. - [x] **Area of a square.**

- :file_folder: : `3-square.py`: Create a class `Square` that defines a square by: (based on `2-square.py`)
  - Private instance attribute: `size`
    - Instantiation with optional `size`:`def __init__(self, size=0):`
      - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
      - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`
  - **Public instance method: `def area(self):` that returns the current square area**

4. - [x] **Access and update private attribute.**

- :file_folder: : `4-square.py`: Create a class `Square` that defines a square by: (based on `3-square.py`)
  - Private instance attribute: `size`:
    - property `def size(self):` to retrieve it
    - property setter `def size(self, value):` to set it:
            - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
            - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`
  - Instantation with optional `size`: `def __init__(self, size=0):`
  - Public instance method: `def area(self):` that returns the current square area.

5. - [x] **Printing a square.**

- :file_folder: : `5-square.py`: Create a class `Square` that defines a square by: (based on `4-square.py`)
  - Private instance attribute: `size`:
    - property `def size(self):` to retrieve it
    - property setter `def size(self, value):` to set it:
      - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
      - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`
  - Instantation with optional `size`: `def __init__(self, size=0):`
  - Public instance method: `def area(self):` that returns the current square area.
  - **Public instance method: `def my_print(self):` that prints in stdoout the square with the character `#`.**
    - **if `size` is equal to 0, print an empty line**

6. - [x] **Coordinates of a square.**

- :file_folder: : `6-square.py`: Create a class `Square` that defines a square by: (based on `5-square.py`)
  - Private instance attribute: `size`:
    - property `def size(self):` to retrieve it
    - property setter `def size(self, value):` to set it:
      - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
      - if `size` is less than `0`, raise a `ValueError` exception with the message **`size must be >= 0`**
  - **Private instance attribute: `position`:**
    - property `def position(self):` to retrieve it
    - property setter `def position(self, value):` to set it:
      - `position` must be a tuple of 2 positive intgers, otherwise raise a `TypeError` exception with the message **`position must be a tuple of 2 positive integers`**
  - Instantiation with optional `size` and optional `position`: _`def __init__(self size=0, position=(0, 0)):`_
  - Public instance method: `def area(self):` that returns the current square area
  - Public instance method: `def my_print(self):` that prints in stdout the square with the character `#`:
    - if `size` is equal to 0, print an empty line
      - `position` should be use by using space - **Don't fill lines by spaces** when `position[1] > 0`

7. - [x] **Singly linked list.     <sup> :fire: advanced</sup>**

- :file_folder: : `100-singly_linked_list.py`: Write a class `Node` that defines a node of a singly linked list by:
  - Private instance attribute: `data`:
    - property _`def data(self):`_ to retrieve it 
    - property setter _`def data(self, value):`_ to set it:
      - `data` must be an integer, otherwise raise a `TypeError` exception with the message **`data must be an integer`**
  - Private instance attribute: `next_node`:
    - property _`def next_node(self):`_ to retrieve it
    - property setter _`def next_node(self, value):`_ to set it:
      - `next_node` can be `None` or must be a `Node`, otherwise raise a `TypeError` exception with the messae **`next_node must be a Node object`**
  - Instantiation with `data` and `next_node`: _`def __init__(self, data, next_node=None):`_
  
And, write a class `SinglyLinkedList` that defines a singly linked list by:

- Private instance attribute: `head` (no setter or getter)
- Simple instantiation: _`def __init__(self):`_
- Should be printable:

  - print the entire list in stdout
  - one node number by line

- Public instance method: _`def sorted_insert(self, value):`_ that inserts a new `Node` into the correct sorted position in the list (increasing order)

8. - [x] **Print Square instance   <sup>:fire: advanced</sup>**

- :file_folder: : `101-square.py`: Write a class `Square` that defines a square by: (based on `6-square.py`)
  - Private instance attribute: `size`:

    - property _`def size(self):`_ to retrieve it
    - property setter _`def size(self, value):`_ to set it:
      - `size` must be an integer, otherwise raise a `TypeError` exception with the message ***`size must be an integer`***
      - if `size` is less than 0, raise a `ValueError` exception with the message ***`size must be >= 0`***

  - Private instance attribute: `position`:

    - property _`def position(self):`_ to retrieve it
    - property setter _`def position(self, value):`_ to set it:
      - `position` must be a tuple of 2 positive integers, otherwise raise a `TypeError` exception with the message ***`position must be a tuple of 2 positive integer`***

  - Instantiation with optional `size` and optional `position`: _`def __init__(self, size=0, position=(0, 0)):`_
  - Public instance method: _`def area(self):`_ that returns the current square area
  - Public instance method: _`def my_print(self):`_ that prints in stdout the square with the character `#`:

    - if `size` is equal to 0, print an empty line
    - `position` should be use by using space

  - Printing a `Square` instance should have the same behavior as `my_print()`

