# SherlockAndValidString
Sherlock considers a string, 'S', to be valid if either of the following conditions are satisfied:

1. All characters in 'S'  have the same exact frequency (i.e., occur the same number of times). For example, 'S' = 'aabbcc'  is valid, but 'S' = "aabbccc" is not valid.

2. Deleting exactly '1'  character from 'S'  will result in all its characters having the same frequency. For example, S = aabbccc  and S = aabbc  are valid because all their letters will have the same frequency if we remove occurrence of c, but S = abcccc  is not valid because we'd need to remove 3 characters - c's.

Given S, can you determine if it's valid or not? If it's valid, print True on a new line; otherwise, print False instead.
