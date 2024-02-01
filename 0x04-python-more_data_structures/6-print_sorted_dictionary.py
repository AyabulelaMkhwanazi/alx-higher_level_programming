def print_sorted_dictionary(a_dictionary):
    # Sort the dictionary items by their keys
    sorted_items = sorted(a_dictionary.items())
    # Loop through the sorted items and print each key-value pair
    for key, value in sorted_items:
        print(key, ":", value)
