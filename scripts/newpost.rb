require 'date'

POSTS_DIR = '../_posts/'

post = ARGV[0]
postName = POSTS_DIR + Date.today.strftime("%Y-%m-%d-") + post + '.md'

File.open(postName, 'w') {|f| f.write(
  "---\nlayout: post\nsection-type: post\ntitle: Title\ncategory: Category\ntags: [ 'tag1', 'tag2' ]\n---")
}

puts('[+] Created ' + post + ' post')