#!/usr/bin/env ruby

require 'date'

POSTS_DIR = '_posts/'

post = ARGV[0]

postTitle = post.split(/[-_]/).map{ |w| w.capitalize}.join(" ")

File.open(POSTS_DIR + Date.today.strftime("%Y-%m-%d-") + post + '.md', 'w') {|f| f.write(
  "---\nlayout: post\nsection-type: post\ntitle: #{postTitle}\ncategory: Category\ntags: [ 'hugsar', 'tag2' ]\n---")
}

puts('[+] Created ' + post + ' post')
