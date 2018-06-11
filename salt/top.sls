base:
  '*':
    - common
  'app-*':
    - app
    - nginx
  'vrrp-primary,vrrp-secondary':
    - match: list
    - keepalived
