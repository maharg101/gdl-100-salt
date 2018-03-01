install nginx and enable it:
  pkg.installed:
    - name: nginx
  service.running:
    - name: nginx
    - enable: True
