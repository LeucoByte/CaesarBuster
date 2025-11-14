# CaesarButcher
A simple Bash script to brute-force Caesar cipher text, supporting both uppercase and lowercase letters.
It prints **all 25 possible shifts**, so you need to carefully look through the outputs to find the one that actually makes sense.

If none of the outputs make sense, it might mean:  
- The string is **not encoded with a Caesar cipher**  
- Or it **requires additional decryption steps**, either before or after using this script.

**NOTE: On this repository, you have an example of a message encrypted with Caesar 19 that has been decripted with caesar 7**

## Installation
``` bash
curl -O https://raw.githubusercontent.com/LeucoByte/CaesarButcher/main/caesar-buster.sh
chmod +x caesar-buster.sh
```

## Use
``` bash
bash caesar-buster.sh
```
