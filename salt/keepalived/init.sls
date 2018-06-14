install keepalived et al:
  pkg.installed:
    - name: keepalived
    - name: python2.7
    - name: python-neutronclient
