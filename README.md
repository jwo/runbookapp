RunBookApp
==========

A Crazy simple experiment for the creation and publication of a runbook for
applications.

A RunBook is illustrated documentation for a website.

Things this app uses
--------------------

* Rails 4.0
* Turbolinks
* Filepicker Drag/Drop
* in Place editing
* Wicked PDF
* Devise

Getting Started
--------------

1. Clone
2. copy .env.sample to .env and fill in values
3. rake db:create db:schema:load
4. foreman start
5. profit

Workflow
--------

1. Create an application
2. Create pages for the application
* Optionally, Enter a folder and for each page to control the order in which the
  pages flow
* Take a screenshot in Skitch or GLUI and drag, annotate it with cool arrows,
  and then drag over to the drag/drop. If everything is working, you'll see a
  preview instantly.
3. Download the PDF documentation

TODO
----

1. Create Static HTML/CSS for the documentation for easy hosting?
2. Allow embedding?

On Heroku
---------

We use environment variables in the `asset_sync`, so you'll need to:

```
heroku labs:enable user-env-compile
```

Also, look at .env.sample to see which environmental variables you need to set
(like S3 keys)


Copyright
---------

2013 Jesse Wolgamott, All Rights Reserved (for now)
