base:
  'app-*':
    - default
  'vrrp-primary':
    - vrrp-primary
    - haproxy
  'vrrp-secondary':
    - vrrp-secondary
    - haproxy
