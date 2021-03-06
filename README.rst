CNX User Service
================

This is a single sign-on application for the Connexions system. It
provides user profiles, identity management, authentication procedures
and remote autentication services.

Getting started
---------------

This will require a 'Postgres' install. If you are using the
``development.ini`` configuration file, you'll want to set up a
``cnxuser`` database for user ``cnxuser`` with the password
``cnxuser``.


The application is built in Python and can be installed using the
typical Python distribution installation procedure demonstrated
below::

    $ python setup.py install

*Important*: The application depends on a forked copy of ``velruse``
at `pumazi/velruse #cnx-master
<https://github.com/pumazi/velruse/tree/cnx-master>`_. This fork
provides some bug fixes as well as event hooks and possibly other fixes.

This will install the package and a few application specific
scripts. One of these scripts is used to initialize the database with
the applications schema.
::

    $ initialize_cnx-user_db development.ini

To run the application, supply the ``pserve`` (the Pyramid framework's
serve script) with an application configuration file
(``development.ini`` has been supplied with the package).
::

    $ pserve development.ini

You can then surf to the address printed out by the above command.

License
-------

This software is subject to the provisions of the GNU Affero General
Public License Version 3.0 (AGPL). See license.txt for details.
Copyright (c) 2013 Rice University
