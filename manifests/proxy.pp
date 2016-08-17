class firewall_templates::proxy {
  firewall { '100 drop outgoing port 80':
    proto	=> 'tcp',
    chain	=> 'OUTPUT',
    dport	=> '80',
    destination	=> '! 192.168.0.0/16',
    action	=> 'drop',
  }
  firewall { '101 drop outgoing port 443':
    proto       => 'tcp',
    chain       => 'OUTPUT',
    dport       => '443',
    destination => '! 192.168.0.0/16',
    action      => 'drop',
  }
}
