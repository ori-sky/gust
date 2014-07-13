BLOG_DIR=/usr/local/nginx/html
BLOG_FILE=blog.html

STYLE=-c css/bootstrap.min.css -c css/blog.css
POST_HTML=blog/post.html
TEMP_HTML=blog/template.html
BD_VARS=STYLE="$(STYLE)" POST_HTML="$(POST_HTML)" TEMP_HTML="$(TEMP_HTML)"

install-blog:
	mkdir -p $(BLOG_DIR)/css
	cp blog/*.css $(BLOG_DIR)/css
	$(BD_VARS) blogdown blog/*.md > $(BLOG_DIR)/$(BLOG_FILE)
