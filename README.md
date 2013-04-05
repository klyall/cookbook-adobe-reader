Description
===========

Installs and configures Dobe Reader from the repositories provided by Adobe.


Requirements
============

Platform:

* Debian, Ubuntu, CentOS, Red Hat, Fedora

The following Opscode cookbooks are dependencies:

* apt

Attributes
==========

Default attribute values should be sufficient for most cases. 

Usage
=====

Simply include the recipe where you want Google Chrome installed.

#Examples

    include_recipe 'adobe-reader'
  
Testing
=======

The recipe has been tested using Test-Kitchen.

To test the recipe:

    bundle install
    
    bundle exec kitchen test
