# puppet-firewall-templates

This is a module designed to make it easier to apply a set of firewall rules to a node in puppet, with preconfigured rules defined.

Essentially, it allows you to classify a node with as many template classes as required to achieve the required ruleset in the required chains.

For example, classifying a node with the puppet-firewall-templates::proxy class will block ports 80 and 443 using the OUTPUT chain, to simulate a scenario where all access to the Internet is only through a proxy.

Classifying the master node with puppet-firewall-templates::master will simply open up the ports required by Puppet on the INPUT chain.
