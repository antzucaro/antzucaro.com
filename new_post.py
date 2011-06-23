#!/usr/bin/python

import os
import re
import sys
from optparse import OptionParser
from datetime import datetime

def sluggify(text=None):
    text = re.sub(r'[?:\'!@#$%^&*()+=]', '', text)
    text = re.sub(r'[ /]', '-', text)
    return text.lower()

def next_post_num():
    posts = []
    post_filename_re = re.compile(
        ".*((\.textile$)|(\.markdown$)|(\.org$)|(\.html$)|(\.txt$)|(\.rst$))")

    if not os.path.isdir("_posts"):
        os.mkdir('_posts')

    "Recursively walk a directory tree and find all the files matching regex"
    for root, dirs, files in os.walk('_posts'):
        for f in files:
                if post_filename_re.match(f):
                    posts.append(f)

    max_post_num = 0
    for post in posts:
        post_num = int(re.search(r'^(\d+)', post).group(1))
        if  post_num > max_post_num:
            max_post_num = post_num

    return max_post_num + 1

def options():
    # define command line options
    parser = OptionParser()
    parser.add_option("-c", "--categories", dest="categories", 
            help="The categories to which the "\
                    "post belongs (default: Uncategorized)")
    parser.add_option("-d", "--date", dest="date", 
            help="The post's publish date (default: now)")
    parser.add_option("-t", "--title", dest="title", 
            help = "The title of the post (default: Title)")
    parser.add_option("-p", "--permalink", dest="permalink", 
            help="The post's permalink (default: the title sluggified)")
    parser.add_option("-n", "--number", dest="number", type="int",
            help="The post number (default: the next available number)")
    
    # parse command line options
    (options, args) = parser.parse_args()
    
    # set up defaults if we weren't given any
    if not options.date:
        options.date = datetime.now().strftime('%Y/%m/%d %H:%M:%S')
    
    if not options.categories:
        options.categories = 'Uncategorized'
    
    if not options.title:
        options.title = 'Title'
    
    if not options.permalink:
        # FIXME: need to bring in the domain name from bf.config
        options.permalink = "http://www.antzucaro.com/{0}/{1}"\
                .format(datetime.now().strftime('%Y/%m'), sluggify(options.title))

    if not options.number:
        options.number = next_post_num()

    return options

def main():
    opts = options()

    # build the YAML
    yaml = ""
    yaml += "---\n"\
        "title: {0}\n"\
        "date: {1}\n"\
        "categories: {2}\n"\
        "guid: {4}\n"\
        "permalink: {3}\n"\
        "---".format(opts.title, opts.date, 
                opts.categories, opts.permalink, opts.permalink)

    # write the stub for the new post
    filename = '_posts/{0:04d}_{1}.markdown'.format(opts.number, opts.permalink.replace('-', '_').split('/')[-1])
    f = open(filename, 'w')
    f.write(yaml)
    f.close()
    print "Created {0}".format(filename)

if __name__ == "__main__":
    main()
