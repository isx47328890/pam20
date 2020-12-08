# PAM
## @edt ASIX M06-ASO
### Mark Santiago


**Imatge:**

* **[isx47328890/pam20:auth]**: host pam que configura l'autenticació unix i ldap usant authconfig. Es crea automàticament el directori home dels usuaris de ldap (filtrat per uid) i es munta un recurs tmpfs de 100MB.

Atenció: fabricat usant Fedora-27 en lloc de Fedora-32 per usar authconfig en lloc de authselect

Atenció: cal usar en el container --privileged per poder fer els muntatges.

---

**LDAP container**
```bash
docker run --rm --name ldap.edt.org -h ldap.edt.org --net 2hisix -p 389:389 -d isx47328890/ldap20:latest
```

**PAM container**
```bash
docker run --rm --name pam.edt.org -h pam.edt.org --net 2hisix --privileged -it isx47328890/pam20:auth
```

[isx47328890/pam20:auth]: https://hub.docker.com/layers/isx47328890/pam20/auth/images/sha256-44de02ee08bb9c5037a337140ef09aea0fe4ab59ea9e952288151bea4e9f895b?context=explore
