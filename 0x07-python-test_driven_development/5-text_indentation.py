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
    if isinstance(text, (int, float)):
        raise TypeError("text must be a string")

    string = ""
    for char in text:
        string += char
        if char in ['.', '?', ':']:
            string += "\n\n"

    lines = string.splitlines()
    stripped_lines = [line.strip() for line in lines]

    final_text = "\n".join(stripped_lines)
    print(final_text)
