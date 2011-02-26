from __future__ import with_statement
from fabric.api import local, settings, abort

BLOG_SRC = '/home/ant/Documents/antzucaro.com/_site/'
BLOG_DEST = '/home/azucaro/antzucaro.com/public/'
MEDIA_SRC = '/home/ant/Documents/media.antzucaro.com/'
MEDIA_DEST = '/home/azucaro/media.antzucaro.com/'

def re():
    local('blogofile build', capture=False)

def serve():
    local('blogofile serve', capture=False)

def reserve():
    re()
    serve()

def deploy():
    local("rsync -av {0} azucaro@antzucaro.com:{1}".format(BLOG_SRC, BLOG_DEST), capture=False)
    local("rsync -av {0} azucaro@antzucaro.com:{1}".format(MEDIA_SRC, MEDIA_DEST), capture=False)
