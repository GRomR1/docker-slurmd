FROM gromr1/slurmbase
MAINTAINER Ruslan Gainanov <gromrx1@gmail.com>

ADD scripts/start.sh /root/start.sh
RUN chmod +x /root/start.sh

ADD etc/supervisord.d/slurmd.conf /etc/supervisor/conf.d/slurmd.conf

CMD ["/bin/bash","/root/start.sh"]
