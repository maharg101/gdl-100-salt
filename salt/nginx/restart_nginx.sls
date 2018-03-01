restart nginx:
  module.run:
    - name: service.restart
    - m_name: nginx  # m_name gets passed to the execution module as "name"
