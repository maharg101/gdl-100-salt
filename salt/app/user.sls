user account for app:
  user.present:
    - name: {{ pillar['app_user'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['app_user'] }}
