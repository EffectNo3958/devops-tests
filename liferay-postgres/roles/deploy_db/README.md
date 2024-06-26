Role DE Deploy
=========

The role is created based on 
https://citizix.com/how-to-use-ansible-to-install-and-configure-postgres-14-on-ubuntu-20-04/

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.
- db_user: Liferay db owner user (lportal)  
- db_password: Liferay db owner user password
- db_name: Liferay db name (lportal)
- sql_destination: Temporary folder SQL file to be uploaded
- sql_filename: SQL filename. Provided via Liferay distributive


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      become: True
      roles:
         - { role: deploy_db }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
