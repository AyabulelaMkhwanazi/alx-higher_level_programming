#!/usr/bin/python3
def update_dictionary(a_dictionary, key, value):
    exist = a_dictionary.get(key)

    a_dictionary[key] = value
    return a_dictionary
