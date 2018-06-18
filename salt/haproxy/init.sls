install haproxy:
  pkg.installed:
    - pkgs:
      - haproxy
/etc/haproxy/haproxy.cfg:
  file.managed:
    - source: salt://haproxy/haproxy.cfg.jinja
    - template: jinja
    - user: root
    - group: root
    - mode: 644
haproxy enabled and running:
  service.running:
    - name: haproxy
    - enable: True
syslog:
  service.running:
    - enable: True
    - reload: True
