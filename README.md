# kixlab.github.io

Our lab's website. We are using Jekyll, a static website generator.

## Adding content

### Member information

1. Go to `_data/members.yml`
2. Edit or add what you want
3. You can add your name, email, homepage, and research interest

For the picture, please choose an image with 1:1 aspect ratio like the others. (Suggested size: 600x600px)
Place the file at `assets/img/members/your_name.jpg` and reference it in `members.yml` with just `your_name.jpg`.

### News and projects

1. Add a new file in `_posts/news/` or `_posts/projects/` (for example, by duplicating and renaming an existing one).
2. You can write the content in Markdown format
3. If the post has a picture, place it in assets/img/news, or assets/img/projects, respectively.

### Publications

1. Go to `_data/publications.yml`
2. Append the list by copy-pasting one of the items and filling in your information.
3. If you need to upload additional materials (e.g., paper, poster, slide) please upload files to [this repo](https://github.com/kixlab/website-files). Then the URL will be `https://www.kixlab.org/files/{path in the repo}`.

## How to check changes you made locally

Please check that the site still works before you submit a pull request. You can do this by:

```sh
bundle install && jekyll serve
```
or, if you want to use Docker
```sh
DOCKER_BUILDKIT=1 docker build -t kixlab-homepage . && docker run --rm -p 4000:4000 -v "$(pwd):/src" -it kixlab-homepage
```

Then visit `localhost:4000` in your browser.

## How to host other websites under kixlab.org
We have to update redirect rules defined in [`_redirects`](https://github.com/kixlab/kixlab.github.io/blob/master/_redirects).
For example, to host `https://cs473-fall-2018.netlify.com` in `courses/cs473-fall-2018`,
We have to add two lines to `_redirects`
```
/courses/cs473-fall-2018 /courses/cs473-fall-2018/index.html 301!
/courses/cs473-fall-2018/* https://cs473-fall-2018.netlify.com/:splat 200
```

## How to branch, commit and push

Please don't commit directly to master, if you can avoid it.

1. Create a new branch from master: `git checkout -b my-branch-name`
2. Add and commit your changes. `git status` to check what you did, `git add ...` to add new files, `git commit -m "Put a comprehensive summary of your changes here"`
3. Push your new branch: `git push` (depending on your settings, git will complain and tell you what to do instead).
4. Go to https://github.com/kixlab/kixlab.github.io and create a new Pull Request for your branch.
5. Someone with authority will go on and merge your changes.
