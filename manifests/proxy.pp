class firewall_templates::proxy {
  firewall { '100 drop outgoing port 80':
    proto	      => 'tcp',
    iniface     => '! lo',
    chain	      => 'OUTPUT',
    dport	      => '80',
    action	    => 'drop',
  }
  firewall { '101 drop outgoing port 443':
    proto       => 'tcp',
    iniface     => '! lo',
    chain       => 'OUTPUT',
    dport       => '443',
    action      => 'drop',
  }
}
