## @edt ASIX M06-ASO
### Curs 2020 - 2021
### Mark Santiago

Imatges de Docker a [Docker hub de isx47328890]  
Repositori [GitHub de isx47328890] per veure el contingut  
Repositori [GitLab de isx47328890] per veure el contingut

* **isx47328890/pam20:base** - Imatge host pam per practicar PAM amb chfn i system-auth. Es tracten els types auth i session amb chfn practicant el significat de optional, sufficient, required i requisite i el mòdul pam_unix.so. El type password amb pwquality. El type account amb pam_time.so. El type sessions amb pam_mkhomedir.so i pam_mount.so. Es practica pam_mount.so amb un muntatge tmpfs i un de nfs4.

<br>

* **isx47328890/pam20:ldap**: host pam per practicar *PAM* amb autenticacio local unix (*pam_unix.so*) i autenticació LDAP (amb *pam_ldap.so*). Utilitzen el paquet *nss-pam-ldapd*. Cal configurar: *ldap.conf*, *nslcd*, *nscd*, *nsswitch*.
L'autenticació es configura al *system-auth*.

<br>

* **isx47328890/pam20:python** - Imatge host pam basat en pam20:base per practicar crear una aplicació PAM Aware i per crear el nostre propi mòdul de PAM.

  Amb l'aplicació PAM Aware pamware.py es fa un programa que mostra els números del 1 al 10 però sempre i quant l'usuari que l'executa sigui un usuari autenticat (pam_unix.so).

  Es dissenya un mòdul propi de PAM anomenat pam_mates.py que autentica els usuaris segons si saben respondre o no a una pregunta de mates. Els usuaris que en saben queden autenticats, si no diuen la resposta correcta es denega l'autenticació. Per poder usar un modul pam escrit en python cal descarregar, compilar i incorporar com a llibreia el mòdul pam_pyhton.so.

  Nota: La imatge pesa molt perquè incorpora molts paquets per compilar el mòdul pam_python.so. Si es vol fer drecera es pot descarregar i usar directament el fitxer pam_python.so del git i copiar-lo al directori de mòduls pam (sempre que sigui la versió de sistema apropiada).

<br>

* **isx47328890/pam20:auth**: host pam que configura l'autenticació unix i ldap usant authconfig. Es crea automàticament el directori home dels usuaris de ldap (filtrat per uid) i es munta un recurs tmpfs de 100MB.





[Docker hub de isx47328890]: https://hub.docker.com/r/isx47328890/pam20
[GitHub de isx47328890]: https://github.com/isx47328890/pam20
[GitLab de isx47328890]: https://gitlab.com/isx47328890/pam20

