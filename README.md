# Simple Encryption and Decryption for Integer Codes

### Encryption

- The program takes an integer code as an argument from the user

- From that argument the adds 3 to each of the elements from the code the user entered and maps it to a new array

- From the new array the method returns a string that preceeds with 3 randomly selected characters followed by the index 
position of each of the element integers in the new array, and finally is concluded by 3 more randomly selected letters.

- The final array is all joined together through interpolation. 

Here is an example of the program being run:
Argument 1 = 150121
Argument 2 = 123498765

![Encrypt GIF](./gifs/encrypt.gif)


### Decryption

- The decryption method reverse-engineers the Encryption method above.

- The method takes an argument from the encrypted string generated above.

- From argument above it slices the string to remove the randomly generated 3 numbers at the beginning and end of the string.

- From there the new string is split, converted to an Integer and subtracts 3 to generate the original argument placed in the
Encryption method above.

Here is an example of the program being run:
Argument 1 = xcxeidefeeny
Argument 2 = rugefghmlkjipsu

![Decrypt GIF](./gifs/decrypt.gif)


👨‍💻 👨‍💻 👨‍💻 👨‍💻 👨‍💻
