RunBookApp
==========

A Crazy simple experiment for the creation and publication of a runbook for
applications.

A RunBook is illustrated documentation.

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
