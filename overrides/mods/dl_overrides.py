#!/usr/bin/env python

"""
This script will download all files specificed in a plaintext
file containing download URLs into the current (script) directory
"""

__author__ = "Ordinator"
__license__ = "https://github.com/AllTheMods/Server-Scripts/blob/master/LICENSE.md"

import os
import errno
import urllib.request
import urllib.parse
import shutil


#file with list of URLs do download
override_list = "override_mods.txt"


def file_lines_list(file):
    """ Reads a plaintext file, retuns a list of all non-blank whitespace-trimmed lines"""
    lines = []
    with open(file) as fp:
        for i, line in enumerate(fp):
            the_line = line.strip()
            if the_line:
                lines.append(the_line)
    return lines


def remove_file(filename):
    """ Safe way to "delete" a file (no error if file doesn't exist) """
    try:
        os.remove(filename)
    except OSError as e: # this would be "except OSError, e:" before Python 2.6
        if e.errno != errno.ENOENT: # errno.ENOENT = no such file or directory
            raise # re-raise exception if a different error occurred


def download(url, filename=None):
    """ 
    Downloads a file from url without needing to specify destination filename
    Credit: https://stackoverflow.com/questions/862173/how-to-download-a-file-using-python-in-a-smarter-way 
    """
    def get_filename(url, open_url):
        if 'Content-Disposition' in open_url.info():
            # If the response has Content-Disposition, try to get filename from it
            content_disp = dict(map(
                lambda x: x.strip().split('=') if '=' in x else (x.strip(),''),
                open_url.info()['Content-Disposition'].split(';')))
            if 'filename' in content_disp:
                header_filename = content_disp['filename'].strip("\"'")
                if header_filename: return header_filename
        # if no filename was found above, parse it out of the final URL.
        return os.path.basename(urllib.parse.urlsplit(open_url.url)[2])

    r = urllib.request.urlopen(url)
    try:
        filename = filename or get_filename(url,r)
        remove_file(filename)
        with open(filename, 'wb') as f:
            shutil.copyfileobj(r,f)
    finally:
        r.close()


#read file into list of urls and download each one
for url in file_lines_list(override_list):
    download(url)

#
