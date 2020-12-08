# PAM
## @edt ASIX M06-ASO
### Mark Santiago

**Imatge:**

* **[isx47328890/pam20:base]** - Imatge host pam per practicar PAM amb chfn i system-auth. Es tracten els types auth i session amb chfn practicant el significat de optional, sufficient, required i requisite i el mòdul pam_unix.so. El type password amb pwquality. El type account amb pam_time.so. El type sessions amb pam_mkhomedir.so i pam_mount.so. Es practica pam_mount.so amb un muntatge tmpfs i un de nfs4.

Atenció, cal usar en el container --privileged per poder fer els muntages nfs.

---

**Crear container interactiu:**
```bash
docker run --rm --name pam.edt.org -h pam.edt.org --net 2hisix --privileged -it isx47328890/pam20:base
```

[isx47328890/pam20:base]: https://hub.docker.com/layers/isx47328890/pam20/base/images/sha256-1ce641f029a58a955f5a8efb03e79a590013c3f87399958a5a11a4263bd71c1e?context=explore