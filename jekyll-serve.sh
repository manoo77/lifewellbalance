#!/bin/bash
docker run --rm -it \
  -v $(pwd):/srv/jekyll \
  -v jekyll-gems:/usr/local/bundle \
  -p 4000:4000 \
  jekyll/jekyll:pages \
  bash -c "bundle install && bundle exec jekyll serve --host 0.0.0.0 --force_polling"
