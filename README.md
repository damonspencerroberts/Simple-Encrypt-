# Simple Encryption and Decryption for Integer Codes

### Encryption

- The program takes an integer code as an argument from the user.

- From that argument the adds 3 to each of the elements from the code the user entered and maps it to a new array.

- From this array, it loops through and checks in a hash for key value pairs that will pair it with a special character if the 
letter exists. It will replace the included letters if they exist in the array.

- From the new array the method returns a string that preceeds with 3 randomly selected characters followed by the index 
position of each of the element integers in the new array, and finally is concluded by 3 more randomly selected letters.

- The final array is all joined together through interpolation. 

Here is an example of the program being run:
Argument 1 = 160121
Argument 2 = 345876

![Encrypt GIF](./gifs/encrypt.gif)


### Decryption

- The decryption method reverse-engineers the Encryption method above.

- The method takes an argument from the encrypted string generated above.

- At first it loops through the split string (array) to use the inverted hash to return the original letters.

- From argument above it removes the randomly generated 3 numbers at the beginning and end of the string.

- From there the array is converted to an Integers and subtracts 3 to generate the original argument placed in the
Encryption method above.

Here is an example of the program being run:
Argument 1 = @p!)j,)&)v!%
Argument 2 = !lz$%il#ji!y

![Decrypt GIF](./gifs/decrypt.gif)

I also created 1000 simulations with rspec of randomly generated numbers between 1 and 1,000,000. It encrypts that original value, then decrypts the new value and checks if the decrypted new value is equal to the original.

Here is the rspec simulations:

![Rspec Simulation](./gifs/rspec_simul.gif)


👨‍💻 👨‍💻 👨‍💻 👨‍💻 👨‍💻
