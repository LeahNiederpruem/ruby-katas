- key => [values]
- You add to the multimap by specifying a key and a single value to be stored at that key: dictionary.put(‘a word’, ‘a definition’) // or dictionary[‘a word’] = ‘a definition’
- You retrieve from the multimap by specifying a key: var keys = dictionary[‘a word’] expect(keys).toEqual([‘1st definition’, ‘2nd definition’]
- Answers its size (the number of keys)
- Answers the total count of values stored across all keys (e.g. “count of all definitions”)
- Answers whether or not it is empty
- Throws / returns an error when attempting to store a null key
