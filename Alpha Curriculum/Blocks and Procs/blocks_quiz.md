1. Blocks are most similar to functions. Blocks are functions without names attached to them, commonly referred to as an anonymous function. Since they are functions, they cannot be passed to methods without employing the use of a "wrapper" object.

2. If you explicitly use a `return` statement inside of a block, the function will return immediately after the first iteration. 

3. The `&` ampersand is used to tell a function to expect a block to appear after the function is invoked. It will then wrap that block in a Proc object to be called after. 

