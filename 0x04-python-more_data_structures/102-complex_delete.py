#!/usr/bin/python3
def complex_delete(a_dictionary, value):
    d_dictionary = {}

    for k, v in a_dictionary.items():
        if v != value:
            d_dictionary[k] = v

    return d_dictionary
