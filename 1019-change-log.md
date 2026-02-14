# change log directory  

    vim /etc/logrotate.conf
    vim /etc/logrotate.d
    vim /etc/logrotate.d/nginx
        /var/log/nginx/*.log ===>> show where log is saved
        daily
        rotate 14
        compress
        

    