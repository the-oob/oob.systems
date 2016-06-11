# Discuss role

This will configure the target host to run discourse and postfix, accessable to
the public 'net.

This uses the discourse\_docker tool from
http://github.com/discourse/discourse\_docker along with the configuration in
discourse-container.yml to build and run a docker container named 'app' that
listens on \*:80/http and \*:443/https.

Additionally, it configures the following in postfix:

- a transport named 'discourse', that pipes mails through docker into discourse
- sends all incoming emails that don't go to a local user account through this
  discourse transport
- configures /etc/aliases to redirect emails to root, and from root to some set
  of unfortunate souls

## Manual tasks

To change the SMTP password used by Discourse, run:

```saslpasswd2 -u discuss.oob.systems discourse```

To create the user from scratch, add the -c flag to that command.
