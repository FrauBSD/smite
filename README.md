[//]: # ($FrauBSD: smite/README.md 2018-07-04 00:30:04 +0000 freebsdfrau $)

# smite

HA daemon for active/passive IP sharing

## Foreword

The following is required before using `git commit` in this project.

> `$ .git-hooks/install.sh`

This will ensure the FrauBSD keyword is expanded/updated for each commit.

# Build

> `% make`

# Install (as root)

> `# make install`

# After install (as root)

### On Linux

> `# service rsyslog restart`
> `# chkconfig smite on`
> `# cd /etc`

### On FreeBSD

> `#service syslogd reload`
> `#sysrc smite_enable=YES`
> `#cd /usr/local/etc`

### Then

> Copy one of `smite.conf.*` to `smite.conf`
> Edit `smite.conf`
> Edit `/usr/local/bin/*test` if necessary

# Starting (as root)

> `# service smite start`

> or for additional debugging in `/var/log/smite.log`

> `# service smite debug`

# Performing a failover (as root)

> `# service smite failover`

# Stopping (as root)

> `# service smite stop`

> or to stop without sending mail to ADMIN e-mail address

> `# service smite kill`
