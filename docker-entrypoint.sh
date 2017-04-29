#!/bin/bash

# ProFTPD config
if [ -z "${PROFTPD_SERVER_NAME}" ]
then sed -i "s/{{PROFTPD_SERVER_NAME}}/Debian/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_SERVER_NAME}}/${PROFTPD_SERVER_NAME}/" /etc/proftpd/proftpd.conf
fi
if [ -z "${PROFTPD_LISTEN_PORT}" ]
then sed -i "s/{{PROFTPD_LISTEN_PORT}}/21/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_LISTEN_PORT}}/${PROFTPD_LISTEN_PORT}/" /etc/proftpd/proftpd.conf
fi
if [ -z "${PROFTPD_PASSIVE_PORTS}" ]
then sed -i "s/{{PROFTPD_PASSIVE_PORTS}}/49152 65534/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_PASSIVE_PORTS}}/${PROFTPD_PASSIVE_PORTS}/" /etc/proftpd/proftpd.conf
fi
if [ -z "${PROFTPD_MASQUERADE_ADDRESS}" ]
then sed -i "s/{{PROFTPD_MASQUERADE_ADDRESS}}/1.2.3.4/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_MASQUERADE_ADDRESS}}/${PROFTPD_MASQUERADE_ADDRESS}/" /etc/proftpd/proftpd.conf
fi
if [ -z "${PROFTPD_DYN_MASQ_REFRESH}" ]
then sed -i "s/{{PROFTPD_DYN_MASQ_REFRESH}}/28800/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_DYN_MASQ_REFRESH}}/${PROFTPD_DYN_MASQ_REFRESH}/" /etc/proftpd/proftpd.conf
fi
if [ -z "${PROFTPD_MAX_INSTANCES}" ]
then sed -i "s/{{PROFTPD_MAX_INSTANCES}}/30/" /etc/proftpd/proftpd.conf
else sed -i "s/{{PROFTPD_MAX_INSTANCES}}/${PROFTPD_MAX_INSTANCES}/" /etc/proftpd/proftpd.conf
fi

# ProFTPD LDAP config
if [ -z "${PROFTPD_LDAP_SERVER}" ]
then sed -i "s/{{PROFTPD_LDAP_SERVER}}/ldap.example.com/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_SERVER}}/${PROFTPD_LDAP_SERVER}/" /etc/proftpd/ldap.conf
fi
if [ -z "${PROFTPD_LDAP_BIND_DN}" ]
then sed -i "s/{{PROFTPD_LDAP_BIND_DN}}/cn=admin,dc=example,dc=com/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_BIND_DN}}/${PROFTPD_LDAP_BIND_DN}/" /etc/proftpd/ldap.conf
fi
if [ -z "${PROFTPD_LDAP_BIND_DN_PASSWORD}" ]
then sed -i "s/{{PROFTPD_LDAP_BIND_DN_PASSWORD}}/supersecurepassword/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_BIND_DN_PASSWORD}}/${PROFTPD_LDAP_BIND_DN_PASSWORD}/" /etc/proftpd/ldap.conf
fi
if [ -z "${PROFTPD_LDAP_USERS}" ]
then sed -i "s/{{PROFTPD_LDAP_USERS}}/30/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_USERS}}/${PROFTPD_LDAP_USERS}/" /etc/proftpd/ldap.conf
fi
if [ -z "${PROFTPD_LDAP_USERS_FILTER}" ]
then sed -i "s/{{PROFTPD_LDAP_USERS_FILTER}}/(&(cn=\%v)(objectclass=person))/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_USERS_FILTER}}/${PROFTPD_LDAP_USERS_FILTER}/" /etc/proftpd/ldap.conf
fi
if [ -z "${PROFTPD_LDAP_GENERATE_HOMEDIR}" ]
then sed -i "s/{{PROFTPD_LDAP_GENERATE_HOMEDIR}}/on/" /etc/proftpd/ldap.conf
else sed -i "s/{{PROFTPD_LDAP_GENERATE_HOMEDIR}}/${PROFTPD_LDAP_GENERATE_HOMEDIR}/" /etc/proftpd/ldap.conf
fi

# ProFTPD TLS config
if [ -z "${PROFTPD_TLS_ENABLE}" ]
then sed -i "s/{{PROFTPD_TLS_ENABLE}}/on/" /etc/proftpd/tls.conf
else sed -i "s/{{PROFTPD_TLS_ENABLE}}/${PROFTPD_TLS_ENABLE}/" /etc/proftpd/tls.conf
fi
if [ -z "${PROFTPD_TLS_RSA_CERTIFICATE_FILE}" ]
then sed -i "s/{{PROFTPD_TLS_RSA_CERTIFICATE_FILE}}/\/etc\/ssl\/certs\/proftpd\.crt/" /etc/proftpd/tls.conf
else sed -i "s:{{PROFTPD_TLS_RSA_CERTIFICATE_FILE}}:${PROFTPD_TLS_RSA_CERTIFICATE_FILE}:" /etc/proftpd/tls.conf
fi
if [ -z "${PROFTPD_TLS_RSA_CERTIFICATE_KEY_FILE}" ]
then sed -i "s/{{PROFTPD_TLS_RSA_CERTIFICATE_KEY_FILE}}/\/etc\/ssl\/private\/proftpd\.key/" /etc/proftpd/tls.conf
else sed -i "s:{{PROFTPD_TLS_RSA_CERTIFICATE_KEY_FILE}}:${PROFTPD_TLS_RSA_CERTIFICATE_KEY_FILE}:" /etc/proftpd/tls.conf
fi
if [ -z "${PROFTPD_TLS_REQUIRED}" ]
then sed -i "s/{{PROFTPD_TLS_REQUIRED}}/off/" /etc/proftpd/tls.conf
else sed -i "s/{{PROFTPD_TLS_REQUIRED}}/${PROFTPD_TLS_REQUIRED}/" /etc/proftpd/tls.conf
fi

unset \
 PROFTPD_SERVER_NAME \
 PROFTPD_LISTEN_PORT \
 PROFTPD_PASSIVE_PORTS \
 PROFTPD_MASQUERADE_ADDRESS \
 PROFTPD_DYN_MASQ_REFRESH \
 PROFTPD_MAX_INSTANCES \
 PROFTPD_LDAP_SERVER \
 PROFTPD_LDAP_BIND_DN \
 PROFTPD_LDAP_BIND_DN_PASSWORD \
 PROFTPD_LDAP_USERS \
 PROFTPD_LDAP_USERS_FILTER \
 PROFTPD_LDAP_GENERATE_HOMEDIR \
 PROFTPD_TLS_ENABLE \
 PROFTPD_TLS_RSA_CERTIFICATE_FILE \
 PROFTPD_TLS_RSA_CERTIFICATE_KEY_FILE \
 PROFTPD_TLS_REQUIRED

# Run ProFTPD
exec "$@"
