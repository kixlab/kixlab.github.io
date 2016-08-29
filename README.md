# kixlab.github.io
Our lab's website

## How to Add NEW Memebers
1. Go to `_data/members.yml`
2. Edit or add what you want
3. You can add your name, email, homepage

### How to Add Latest News
Go to `_posts/news`

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
1. Go to `_data/project.yml
2. Append information in the following form
```
- title: <title of your project>
  img: <thumbnail of your project>
  author: <Your name>
  desc: <description of your project>

