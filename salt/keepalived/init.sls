install keepalived et al:
  pkg.installed:
    - pkgs:
      - keepalived
      - python2.7
      - python-neutronclient
/etc/keepalived:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
/etc/keepalived/failover-primary-to-secondary.sh:
  file.managed:
    - source: salt://keepalived/failover-primary-to-secondary.sh
    - user: root
    - group: root
    - mode: 755
/etc/keepalived/failover-secondary-to-primary.sh:
  file.managed:
    - source: salt://keepalived/failover-secondary-to-primary.sh
    - user: root
    - group: root
    - mode: 755
/etc/keepalived/keepalived.conf:
  file.managed:
    - source: salt://keepalived/{{ pillar['keepalive_conf_source'] }}
    - user: root
    - group: root
    - mode: 644
/root/.config/openstack:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 755
    - makedirs: True
/root/.config/openstack/clouds.yaml:
  file.managed:
    - source: salt://keepalived/clouds.yaml
    - user: root
    - group: root
    - mode: 644
keepalived enabled and running:
  service.running:
    - name: keepalived
    - enable: True
    - watch:
      - file: /etc/keepalived/failover-primary-to-secondary.sh
      - file: /etc/keepalived/failover-secondary-to-primary.sh
