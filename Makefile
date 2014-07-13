BLOG_DIR=/usr/local/nginx/html
BLOG_FILE=blog.html

install-blog:
	STYLE="css/blog.css" blogdown blog/*.md > $(BLOG_DIR)/$(BLOG_FILE)
	mkdir -p $(BLOG_DIR)/css
	cp blog/blog.css $(BLOG_DIR)/css
