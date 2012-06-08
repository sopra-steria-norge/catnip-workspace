

leiningen with catnip installation
=================================

Prereq: Java needs to be installed.

On windows
==========

Set up for using https://github.com/bodil/catnip with leiningen 2.0 on windows

* run install.cmd
* cd ..
* lein version
** Should indicate version 2.x
* lein new <project-name>
* cd <project-name>
* lein edit

Catnip will open in your favorite browser

On linux/mac
============
* Download shell from https://raw.github.com/technomancy/leiningen/preview/bin/lein We will need preview as we require version 2.x.x to run catnib.
* Put shell in path and make executable
* lein self-install
* lein version
** Should indicate version 2.x
* Create the file ~/.lein/profiles.clj with content:
{:user {:plugins [[lein-catnip "0.1.0"]]}}
* Go to your preffered workspace directory
* lein new <project-name>
* cd <project-name>
* lein edit

Catnip will open in your favorite browser