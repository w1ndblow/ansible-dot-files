Role Name
=========

The role contains first steps to install and configure admin tools

Requirements
------------


Role Variables
--------------


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

How use it
----------
If you want use that script from scratch

```./bootstap.sh ```


If the readme file with group with host is agreed with the template like "example.md" then may to generate dynamic inventory

```./dynamic_inv.sh example.md local```

You may use dynamic inventory

```ansible all -i dynamic_inv.py -m shell -a "hostname" ```

License
-------

BSD

Author Information
------------------

koyotne@bk.ru



