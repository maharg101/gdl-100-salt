set up venv:
  pkg.installed:
    - pkgs:
      - python-pip
      - python3-dev
      - build-essential
      - virtualenv
  virtualenv.managed:
    - name: /home/{{ pillar['app_user'] }}/app/venv
    - python: python3
    - requirements: /home/{{ pillar['app_user'] }}/app/requirements.txt
    - runas: {{ pillar['app_user'] }}
    - no_chown: True
    - distribute: True
