webupd8-repo:
  pkgrepo.managed:
    - humanname: WEB UPD8 Repository
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - gpgcheck: 1
    - keyid: EEA14886
    - keyserver: keyserver.ubuntu.com
    - enabled: 1

/etc/profile.d/set-java-home.sh:
  file.managed:
    - template: jinja
    - source: salt://{{slspath}}/files/set-java-home.sh
    - context:
      java_home: /usr/lib/jvm/java-8-oracle
