/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#include <PC_bare_syscall.h>

int sysWrite(int f, const char* d, int l) {
  int ret = syscall3(SYS_write, f, (long)(d), l);

  return (ret);
}

int str_len(const char* string) {
  int length = 0;
  while (*string) {
    string++;
    length++;
  }
  return (length);
}

void printStringStdout(const char* string) {
  sysWrite(1, string, str_len(string));
}

// int main(int argc, char *argv[]) {
int main() {
  printStringStdout("Hello World!\n");
  return 0;
}
