FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN echo y | apt-get install wget
RUN echo y | apt-get install aria2
RUN wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
RUN echo y | apt install ./anydesk_6.1.1-1_amd64.deb
RUN echo y | apt-get install software-properties-common
RUN echo y | add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN echo y | apt-get install build-essential
#RUN echo 'deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse\ndeb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse\n' > /etc/apt/sources.list
RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        busybox \
	unzip \
	unrar \
	tar \
	python3-lxml \
	pv \
	jq \
	ffmpeg \
	dbus-x11 \
	nano \
	chromium-browser \
	qbittorrent \
	feh \
        nautilus \
        gedit \
        expect \
        sudo \
        vim \
        bash \
        net-tools \
        novnc \
        socat \
        x11vnc \
	xvfb \
        xfce4 \
        supervisor \
        curl \
        git \
        wget \
        g++ \
        ssh \
        terminator \
        htop \
        gnupg2 \
	locales \
	xfonts-intl-chinese \
	fonts-wqy-microhei \  
	ibus-pinyin \
	ibus \
	ibus-clutter \
	ibus-gtk \
	ibus-gtk3 \
	telegram-desktop \
	python3-dev \
	python3.9 \
	python3-venv \
	python3-pip \
	
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*   
RUN dpkg-reconfigure locales
RUN pip3 install setuptools
COPY . /app
RUN chmod +x /app/conf.d/websockify.sh
RUN chmod +x /app/run.sh
RUN chmod +x /app/expect_vnc.sh
#RUN echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list
#RUN echo "deb http://deb.anydesk.com/ all main"  >> /etc/apt/sources.list
#RUN wget --no-check-certificate https://dl.google.com/linux/linux_signing_key.pub -P /app
#RUN wget --no-check-certificate -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY -O /app/anydesk.key
#RUN apt-key add /app/anydesk.key
#RUN apt-key add /app/linux_signing_key.pub
#RUN set -ex; \
#    apt-get update \
#    && apt-get install -y --no-install-recommends \
#        google-chrome-stable \
#	anydesk

RUN echo xfce4-session >~/.xsession

CMD ["/app/run.sh"]
