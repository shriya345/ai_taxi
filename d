1. Open Kali/Ubuntu → Terminal.
2. Check: gcc --version
3. If GCC missing:
   sudo apt update
   sudo apt install gcc -y
4. Create: nano buffer.c
5. Save: Ctrl + O → Enter → Ctrl + X.
6. Compile:
   gcc -g -fno-stack-protector -z execstack -o buffer buffer.c
7. Run: ./buffer
   Input: thegeekstuff → Correct Password
8. Run: ./buffer
   Input: hello → Wrong Password
9. Run: ./buffer
   Input: Hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
   → Wrong Password
