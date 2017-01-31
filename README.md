# kixlab.github.io

Our lab's website. We are using Jekyll, a static website generator.

## Adding content

### Member information

1. Go to `_data/members.yml`
2. Edit or add what you want
3. You can add your name, email, homepage

### News and projects

1. Add a new file in `_posts/news/` or `_posts/projects/` (for example, by duplicating and renaming an existing one).
2. You can write the content in Markdown format
3. If the post has a picture, place it in assets/img/news, or assets/img/projects, respectively.

### Publications

__Subject to change soon!__

1. Go to `_data/publication`
2. Select yml file that your new publication published
3. Then append following informations in the form
```yml
- title: <your publication title>
  author: <your name>
  venue: <your venue>
  material:
    - type: <your material type name>
      url: <link to those material>
    " You can add multiple materials append '-' "
  award: <if you get an award then write it here"
  link: <add link to your paper>
```

## How to check changes you made locally

Please do this before you submit a pull request.

```sh
bundle install && jekyll serve
```
or, if you want to use Docker
```sh
docker run --rm -p 4000:4000 -v "$(pwd):/src" -it zxzl/kixlab-homepage jekyll serve --host=0.0.0.0
```

Then visit `localhost:4000` at your browser.

## How to branch, commit and push

Please don't commit directly to master, if you can avoid it.

1. Create a new branch from master: `git checkout -b my-branch-name`
2. Add and commit your changes. `git status` to check what you did, `git add ...` to add new files, `git commit -m "Put a comprehensive summary of your changes here"`
3. Push your new branch: `git push` (depending on your settings, git will complain and tell you what to do instead).
4. Go to https://github.com/kixlab/kixlab.github.io and create a new Pull Request for your branch.
5. Someone with authority will go on and merge your changes.
