install nginx:
  pkg.installed:
    - name: nginx
/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
ensure nginx is enabled and running:
  service.running:
    - name: nginx
    - enable: True
    - watch:
      - file: /etc/nginx/nginx.conf
