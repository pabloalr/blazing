Yet another deployment utility
==============================

**WARNING: This gem is in early development. Use at your own risk.**

But why? Well, Capistrano was bloated for our use-cases, to much stuff bolted on. Inploy looked really interesting, but does not have multistage support from what I could tell. So I did what any reasonable developer would do and befell to the "Not Invented here syndrome".

Top Design goals, ideas:
------------------------

  * deploy is just a push to another remote. all that must be done is triggered by pre and post receveie git hooks.
  * initial setup done by ruby script, so unexerpienced users do not
    have to fiddle with the git config files
  * extensible recipe system, so you can plug in and out what you need and easily roll your own recipes

Usage
=====

Setup a project with

 blazing init

Then edit your config/blazing.rb file.

If you are ready to do your first deploy, run 

 blazing setup <target_name>

Afterwards you can just deploy with

  blazing deploy <target_name>

Or just use

  git push <target_name>

which does basically the same

Backlog
=======

You have guessed it, and the version number does not lie. This is all in early development. So here's my little roadmap, aka the backlog:

  * speccing it all out
  * finish rvm recipe
    * bundler after reseting code (so the app has the gems it needs)
  * improve logging: bubbling of messages, only print them out if needed
  * cleanup documentation
  * release

Recipes:

  * bundler before running recipes? (so we have the gems blazing needs)

  * sync fs recipes
  * sync db recipes for
    * mysql
    * postgres
    * mongodb
    * redis
  * hoptoad notifier
  * maintenance page recipe
  * rollback recipe/feature
  * rvm recipe
  * whenever recipe
  * coffescript recipe
  * sass recipe
  * passenger recipe
  * unicorn recipe
  * apache recipe
  * nginx recipe
  * nanoc deploy

Copyright (c) 2011 Felipe Kaufmann

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.