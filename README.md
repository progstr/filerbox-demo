# Progstr Filer - Filerbox demo application

[Progstr Filer](http://filer.progstr.com) is a developer-friendly file hosting platform built specifically for web apps. It lets you easily associate file attachments with your ActiveRecord models and removes the hassle of actually hosting the files yourself.

Filerbox is a demo web app built with Ruby on Rails mimicking the Dropbox web UI. It lets you upload files to a cloud folder and keeps track of them displaying those in a list. You can see the info on any of the files, view it by clicking its name and delete it when you decide you no longer need it. It uses the Progstr Filer service as a storage backend.

## Configuration
We need the `progstr-filer` gem in our `Gemfile`. We might also need to edit our environment's configuration file as described in the [documentation](http://docs.progstr.com/filer-getting-started.html).

## Models
We need a model of our file objects - we picked the name `Boxfile`. We need to associate it with an uploader instance. To do that, we define an uploader class in `uploaders/file_uploader.rb` and mark our model class with a `has_uploader` statement. Finally we need to set up our database storage. Since most data comes from the Progstr Filer web service, we only need a column to store the file associations (their ID's really). That's a simple string column.

## Controllers
We define a single `BoxfilesController` class that handles file uploads. It doesn't do much - it initializes a `Boxfile` object and saves it to the database. Note that a save might fail - we have defined a validation rule on our model that marks the file object as required.

## Views
The most important view is the `boxfiles/index.html.erb` one it loops over all the files and renders the file list. To do that it uses the `with_infos` view helper which takes a block that takes a `Boxfile` and a file info object and executes it for every file.

# Improvement Ideas

Being a sample application, Filerbox isn't a complete solution. Here are some parts that may need more work in a real production deployment:

* Add an error display box that shows the error messages to the user.
* Ask for confirmation when deleting a file.
* Cache file info data either in memory or in the dataase (probably as `Boxfile` model attributes), so that we don't hit the info API on every page render.

# Help and support

If you get stuck, contact us via the support section on the [Progstr Filer web site](http://filer.progstr.com).
