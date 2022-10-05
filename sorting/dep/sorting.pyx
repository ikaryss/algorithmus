cimport cython

@cython.boundscheck(False)  # Deactivate bounds checking
@cython.wraparound(False)   # Deactivate negative indexing.
def insertion_sort(long[::1] array):

    cdef int arr_len = len(array)
    cdef int j
    cdef int i

    if arr_len < 2:
        raise ValueError("Arrays with lengths of 2 or more are allowed")

    for j in range(1, arr_len):
        key = array[j]
        i = j - 1
        while (i >= 0) and (array[i] > key):
            array[i+1] = array[i]
            i -= 1
        array[i+1] = key

    return array
