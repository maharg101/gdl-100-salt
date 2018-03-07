/etc/systemd/system/gunicorn.service:
  file.managed:
    - source: salt://app/gunicorn.service
    - user: root
    - group: root
    - mode: 644
/etc/systemd/system/gunicorn.socket:
  file.managed:
    - source: salt://app/gunicorn.socket
    - user: root
    - group: root
    - mode: 644
/etc/tmpfiles.d/gunicorn.conf:
  file.managed:
    - source: salt://app/gunicorn.conf
    - user: root
    - group: root
    - mode: 644
gunicorn enabled and running:
  service.running:
    - name: gunicorn
    - enable: True
