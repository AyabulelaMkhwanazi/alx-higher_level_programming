#!/usr/bin/python3

"""
This module defines a function that prints
a text with 2 new lines after each of these characters:
. ? and :
"""


def text_indentation(text):
    """
    Prints a text with 2 new lines after each of these
    characters: . ? and :

    Args:
        text (str): The text to print.

    Raises:
        TypeError: If text is not a string.
    """
    if not isinstance(text, str):
        raise TypeError("text must be a string")

    for char in ".:?":
        text = text.replace(char, char + "\n\n")
    lines = text.split("\n")
    for i in range(len(lines)):
        lines[i] = lines[i].rstrip()  # Only remove trailing spaces
    text = "\n".join(lines)
    print(text)
