#!/usr/bin/python

class End:

    def __init__(self, name):
        self.name = name

    def get_name(self):
        return self.name

class Router:

    def __init__(self):

def main():
    end1 = End("E1")
    print end1.get_name()

if __name__ =='__main__':
    main()


