#!/usr/bin/env python

import sys, os

TEMPLATE = """#!/usr/bin/env python

def main():


if __name__ == '__main__':
  print main()

"""

def main():
  n = str(sys.argv[1])
  os.makedirs(n)
  f = open('{0}/{0}.py'.format(n), 'w')
  f.write(TEMPLATE)
  f.close()


if __name__ == '__main__':
  main()
