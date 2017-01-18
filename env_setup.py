from subprocess import call, Popen, PIPE
import urllib2


### BASH STUFF ###

# First link bash files, assumed to be in dev/dotfiles
call(["rm", ".bashrc"])
call(["ln", "-s", "dev/dotfiles/bash/bashrc", ".bashrc"])
call(["rm", ".bash"])
call(["ln", "-s", "dev/dotfiles/bash", ".bash"])


### PYTHON STUFF ###

# now install pip if it doesn't already exist, assuming we have python
p = Popen(["which", "pip"], stdout=PIPE, stderr=PIPE)
try:
    p.stdout.next()
    print "- system has pip installed"
except StopIteration:
    print "- installing pip..."
    r = urllib2.urlopen("https://bootstrap.pypa.io/get-pip.py")
    f = open("get-pip.py", 'w')
    f.write(r.read())
    f.close()
    call(["python", "get-pip.py", "--prefix=$HOME"])

# now to use pip to install virtualenv
call(["pip", "install", "virtualenvwrapper", "--prefix=$HOME"])


### VIM STUFF ###

# print "- downloading latest vim to dev"
#
# print "- installing local version of vim"
