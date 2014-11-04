# puppet-chocolatey_bootstrap

## Overview

This module installs chocolatey to the system. 
It supports using custom scripts for installing chocolatey. To use the chocolatey provider, see [puppet-chocolatey ](http://https://github.com/rismoney/puppet-chocolatey "puppet-chocolatey ")


## Class parameters

### Optional: 

`$script_url`: URL for the download, extract, and install script. Defaults to chocolatey's URL.

`$extra_options`: Any input parameter that the script may have. This is particularly useful if the Powershell script provided is a custom script that may have any arbitrary parameter inputs.