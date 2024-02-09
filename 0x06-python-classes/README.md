# Python - Classes and Objects

**This directory contains files that can be tested for Python - Classes and Objects .**

> [!IMPORTANT]
> Make the Python files executables using the following command:
> `chmod +x <filename>`


## Tasks

> [!NOTE]
> If there aren't any main.py files provided for a task, use test files to run the program.


- **0. My first square.**

   - :file_folder: : `0-square.py`: Create an empty class `Square` that defines a square

- **1. Square with size.**

   - :file_folder: : `1-square.py`: Create a class `Square` that defines a square by: (based on `0-square.py`)
      - Private instance attribute: `size`
      - Instantiation with `size` (no type/value verification)
- **2. Size validation.**

   - :file_folder: : `2-square.py`: Create a class `Square` that defines a square by: (based on `1-square.py`)
      - Private instance attribute: `size`
      - Instantiation with optional `size`:`def __init__(self, size=0):`
         - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
         - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`

- **3. Area of a square.**

   - :file_folder: : `3-square.py`: Create a class `Square` that defines a square by: (based on `2-square.py`)
      - Private instance attribute: `size`
      - Instantiation with optional `size`:`def __init__(self, size=0):`
         - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
         - if `size` is less than `0`, raise a `ValueError` exception with the message `size must be >= 0`
      - **Public instance method: `def area(self): that returns the current square area**

- **4. Access and update private attribute.**

   - :file_folder: : `4-square.py`: Create a class `Square` that defines a square by: (based on `3-square.py`)
      - Private instance attribute: `size`:
         - property `def size(self):` to retrieve it
         - property setter `def size(self, value):` to set it:
            - `size` must be an integer, otherwise raise a `TypeError` exception with the message `size must be an integer`
            - if `size` is less than `0`, raise a `ValueError` exceptioni with the message `size must be >= 0`
      - Instantation with optional `size`: `def __init__(self, size=0):`
      - Public instance method: `def area(self):` that returns the current square area.
