# PAM
## @edt ASIX M06-ASO
### Mark Santiago

**Imatge**
* **[isx47328890/pam20:python]** - Imatge host pam basat en pam20:base per practicar crear una aplicació PAM Aware i per crear el nostre propi mòdul de PAM.

  Amb l'aplicació PAM Aware pamware.py es fa un programa que mostra els números del 1 al 10 però sempre i quant l'usuari que l'executa sigui un usuari autenticat (pam_unix.so).

  Es dissenya un mòdul propi de PAM anomenat pam_mates.py que autentica els usuaris segons si saben respondre o no a una pregunta de mates. Els usuaris que en saben queden autenticats, si no diuen la resposta correcta es denega l'autenticació. Per poder usar un modul pam escrit en python cal descarregar, compilar i incorporar com a llibreia el mòdul pam_pyhton.so.

  Nota: La imatge pesa molt perquè incorpora molts paquets per compilar el mòdul pam_python.so. Si es vol fer drecera es pot descarregar i usar directament el fitxer pam_python.so del git i copiar-lo al directori de mòduls pam (sempre que sigui la versió de sistema apropiada).

---

**Crear container interactiu:**
```bash
docker run --rm --name pam.edt.org -h pam.edt.org --net 2hisix -it isx47328890/pam20:python
```

**Proves internes**
```bash
test pam_python.so pam_mates.py
su - unix01
chfn

test pamaware.py
python3 /opt/docker/pamaware.py
```
[isx47328890/pam20:python]: https://hub.docker.com/layers/isx47328890/pam20/python/images/sha256-e792440713a384c8518e6b832de7f7c7c184d83ec711b7d83ed56e05d2addd82?context=explore