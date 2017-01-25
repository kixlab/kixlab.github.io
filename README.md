# kixlab.github.io
Our lab's website

## How to Add NEW Memebers

1. Go to `_data/members.yml`
2. Edit or add what you want
3. You can add your name, email, homepage

## How to Add Latest News

1. Add a new file in `_posts/news/`.
2. If the post has a picture, place it in assets/img/news, along with a thumbnail version in assets/img/news/thumbs.

## How to Add NEW publications

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

## How to Add new projects

1. Add a new file in `_posts/projects/`.
2. If the post has a picture, place it in assets/img/projects, along with a thumbnail version in assets/img/projects/thumbs.

## How to check changes you made locally, before push or PR

```sh
bundle install && jekyll serve
```
or
```sh
docker run --rm -p 4000:4000 -v "$(pwd):/src" -it zxzl/kixlab-homepage jekyll serve --host=0.0.0.0
```
Then visit `localhost:4000` at your browser.
