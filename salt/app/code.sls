Clone app repo:
  pkg.installed: 
    - name: git
  git.latest:
    - name: https://github.com/maharg101/gdl-100-app
    - rev: develop
    - target: /home/{{ pillar['app_user'] }}/app
    - user: {{ pillar['app_user'] }}
