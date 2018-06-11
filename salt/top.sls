base:
  '*':
    - common
  'app-*':
    - app
    - nginx
  'vrrp-primary,vrrp-secondary':
    - match: lisr
    - keepalived
