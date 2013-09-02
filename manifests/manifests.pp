# Group ID - V-38437
service { "Automated file system mounting tools must not be enabled unless needed.": 
          ensure => false, enable => false }

# Group ID - V-38438
exec { "auditing must be enabled at boot by setting a kernel parameter.":
       command => "sed -i '/kernel/ s/$/ audit=1/' /etc/grub.conf",
       path => "/bin" }

# Group ID - V-38443
exec { "The /etc/gshadow file must be owned by root.":
       command => "chown root /etc/gshadow",
       path => "/bin" }

# Group ID - V-38444
exec { "The systems local IPv6 firewall must implement a deny-all, allow-by-exception policy for inbound packets.":
       command => "sed -i 's/INPUT ACCEPT/INPUT DROP/g' /etc/sysconfig/ip6tables",
       path => "/bin" }

# Group ID - V-38445
exec { "Audit log files must be group-owned by root.":
       command => "grep '^log_file' /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs chgrp root",
       path => "/bin:/usr/bin" }

# Group ID - V-38448
exec { "The /etc/gshadow file must be group owned by root.":
       command => "chgrp root /etc/gshadow",
       path => "/bin" }

# Group ID - V-38449
exec { "The /etc/gshadow file must have mode 0000.":
       command => "chmod 0000 /etc/gshadow",
       path => "/bin" } 

# Group ID - V-38450
exec { "The /etc/passwd file must be owned by root.":
       command => "chown root /etc/passwd",
       path => "/bin" } 

# Group ID - V-38451
exec { "The /etc/passwd file must be group-owned by root.":
       command => "chgrp root /etc/passwd",
       path => "/bin" }

# Group ID - V-38457
exec { "The /etc/passwd file must have mode 0644 or less permissive.":
       command => "chmod 0644 /etc/passwd",
       path => "/bin" }

# Group ID - V-38458
exec { "The /etc/group file must be owned by root.":
       command => "chown root /etc/group",
       path => "/bin" }

# Group ID - V-38459
exec { "The /etc/group file must be group-owned by root.":
       command => "chgrp root /etc/group",
       path => "/bin" }

# Group ID - V-38460
exec { "The NFS server must not have the all_squash option enabled.":
       command => "sed -i '/all_squash/d' /etc/exports",
       path => "/bin" }

# Group ID - V-38461
exec { "The /etc/group file must have mode 0644 or less permissive.":
       command => "chmod 644 /etc/group",
       path => "/bin" }

# Group ID - V - 38465
exec { "Library files must have mode 0755 or less permissive.":
       command => "chmod go-w /lib /lib64 /usr/lib /usr/lib64",
       path => "/bin" }


