def query_bin(array, index_inic, index_final, item):
    if index_inic > index_final:
        return -1
    index = (index_inic+index_final)//2
    if array[index] == item:
        return item
    elif array[index] > item:
        return query_bin(array, index_inic, index-1, item)
    else:
        return query_bin(array, index + 1, index_final, item)


values = [0, 10, 20, 30, 40, 50, 60, 100]
print("result: ", query_bin(values, 0, len(values)-1, 40))