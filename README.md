# The Flowers Blog

**The Flowers Blog** is a sample rails app, designed to demonstrate how we can easily create backend APIs with _Ruby on Rails_.

The project includes both the code for the **Rails** _back-end API_ and the code for the **AngulaJS** _front-end application_.    
The two apps are supposed to work together, where:
* the _backend app_ is responsible for the data management
* the _frontend oapp_ is responsible for the presentation layer

The Rails API exposes two resources: **Flower** and **Comment**, which can be _created_, _destroyed_, _modifyed_ or _viewed_ throught the Front-end application.  
However both of them are still _NOT fully developed_, and do not have the *Authentication part* implemented yet.

## Usage

The code is provided as is, you are 100% free to *clone*, *modify* and/or *colaborate* to this project.

_**Note:** This code is ment to be only an example and is not supposed to be used for non-educational purposes. I strongly advice you not to use it in a production environment, or do it at your own risk._

## Installation

### Dependencies

The code of the back-end app was developed and tested with **Ruby 2.4** and **Rails 5.1.3**

You will also need **rubygems** installed. 

_Recommended installation tool: https://github.com/postmodern/ruby-install_

For setting-up the front-end app, you will need **node.js** and **npm 5.3**

### Download

`git clone https://github.com/zzeni/flowers`

### Configuration

#### Front-end app

You can copy the code of the front-end app (the `/public/fblog` folder) anywhere you like in your file system (e.g. in your `/etc/htdocs` or `/var/www` folder) or just live it where it is.

To configure it, you must change to the **fblog** folder and install the JS dependencies:

```
cd flowers/public/fblog # or cd TO-THE-LOCATION-WHERE-YOU-COPIED-THE-FBLOG-FOLDER
npm install
```

Then you must serve the app with your web server, until you are able to access the `index.html` page through your browser via *http*.

#### Back-end app

Before you can start your back-end app, first your need to install the _gem dependencies_ and set-up the sqlite database:

```
# install the package control manager
gem install bundler
# install project dependencies
cd flowers
bundle install
# Setup the database (Note: will populate the database with some sample data)
rails db:setup
```

_Note: `rails db:setup` will seed the database with some sample data. If you want to avoid that, you can run `rails db:create && rails db:migrate` instead_

Now as you have the **front-end** application running, you should set it's URL (e.g. **http://localhost:8080**) in the back-end's CORS configuration file:

**\#./config/initializers/cors.rb**

`origins 'http://THE-FRONT-END-SITE-URL'`

And that's it! Now you are ready to start your back-end app :)

### Startup

#### Starting the Rails Back-end app

(CAUTION: do this _only_ in your development environment. Do not start in *production*!)

`rails s`

#### Starting the AngularJS Front-end app

See **Configuration**

### Tests

In order to run the unit test, execute:

`spring rspec`

### Author

Evgenia Manolova, ZenLabs.pro
