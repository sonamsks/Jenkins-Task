FROM centos:latest
RUN yum update -y
RUN yum install httpd -y
RUN yum install net-tools -y
RUN yum clean all
RUN systemctl enable httpd

WORKDIR /var/www/html
RUN echo "Success is getting what you want, happiness is wanting what you get." "Time you enjoy wasting is not wasted time." "Happiness is holding someone in your arms and 
                         knowing you hold the whole world." > sks.html
EXPOSE 80
ENTRYPOINT ["httpd"]
CMD ["-DFOREGROUND"]
