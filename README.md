# Short String Packer

Implement a simple but effective compression scheme for short, simple strings

**Important: Please DO NOT FORK this project to write your solution**, because others will be able to see your solution

## Download

If you have `git` setup and know how to use it, clone (DO NOT FORK) this project to your local machine:

```sh
git clone git@github.com:ISS-Security/hw-data_packer.git
```

If you are not familiar with `git`, simply choose to download a ZIP of the whole folder. Click on each filename listed on Github, click the 'RAW' button, and then download that file.

## Overview

In this assignment, you must write the code needed within two methods found in the file `short_string_packer.rb`:

- The `pack(str)` method must take a string called `str` and return an Integer
- The `unpack(packed)` method must take an Integer called `packed`, decompress it and return the string that was originally compressed

## Details

Types:

- `str`: A short String that only contains lowercase characters 'a' - 'z' (no spaces, digits, uppercase, symbols, etc.)
- `packed`: An integer of type Integer

Methods:

- `pack(str)`: Realize that the 26 letters 'a'-'z' don't need to use all the bits available in a UTF-8 character. You can use this to compress a string by packing the bits of each character together:
  - take each letter of `str`, convert it to a number from 1-26
  - take the bits of each number have created and *shift* them appropriately, and use a binary operation to pack them together into a single Integer called `packed`
- `unpack(packed)`: Reverse the process above by accepting a packed Integer and returning the reproduced String

## Coding rules

- Do not use any external libraries (gems)
- Do not write code anywhere outside of the two methods of `short_string_packer.rb`
- Do not use any for/while loops. ONLY use `.map`, `.each` and so on.

## Testing

Test your solution by running the test *specification* file:

```sh
ruby packer_spec.rb
```

Before you change any code, make sure that all your tests fail. Then, as you write each method, different tests will pass or fail. Your final solution should see all tests passing:

```sh
$ ruby packer_spec.rb
Run options:

# Running:

.......

Finished in 0.001401s

7 runs, 7 assertions, 0 failures, 0 errors, 0 skips
```

## Submission

**Do NOT submit a Github repository** – please read below.

I will only take submissions of your version of the solution file `short_string_packer.rb`. Please follow the following directions:

- Complete the solution make sure all tests pass.
- Upload a copy of your solution file to [gist.github.com](https://gist.github.com)
- On Canvas, **submit a URL to your uploaded gist file**.
