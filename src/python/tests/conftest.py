import sys
from os.path import dirname as d
from os.path import abspath,join
root_dir = d(d(abspath(__file__)))
# add reddit to path
sys.path.append(join(root_dir,"reddit"))

