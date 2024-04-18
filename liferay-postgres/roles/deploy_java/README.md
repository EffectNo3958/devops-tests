Role Name: Deploy Java
=========

The role to Deploy Java to the Linux servers.

Deploys Java from x64 Compressed Archive Oracle Java distributive. 

Requirements
------------

No any special requirement.

Role Variables
--------------

Variables are in defaults/main.yml.

If it's required you should update Role variables download_url and java_version to relevant values - URL and version of Java.

Java distributive URL can be found in Java Downloads pages of Oracle site: https://www.oracle.com/java/technologies/downloads/.

Java version is name of catalog which is in the archive, e.g. "jdk-21.0.3".


Dependencies
------------

No any Dependency.

Example Playbook
----------------

First create a playbook including the git role, naming it java.yml.

    ---
    - name: Deploy Java
      hosts: java-host
      become: true
    
      roles:
        - deploy_java 
    ...

`$ ansible-playbook -i hosts java.yml`

License
-------

BSD

Author Information
------------------

Based on https://github.com/avinash6784/ansible-oracle-java

This role was created by [Avinash Pawar](http://devopstechie.com).

