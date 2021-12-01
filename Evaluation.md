# Hodnotenie

### Celkovo

---
- Replikovatelnost testu: 0:5    (PASS:FAIL)
  - **keyword**: `Click Element    ${Samsung_SWA_8500_Kupit}`
  - **chyba**: Element with locator 'xpath://div[contains(@class, '__buy')][contains(., 'Kúpiť na Heureke')]' not found.
  - **mozne riesenie**: produkt ktory vyberas nema moznost `Kupit na heureke`, staci vybrat iny (zvol si ho ty, aby sedel)
---
  
- Z pohladu testingu:
  - je to dost nizka abstrakcia
    - treba ju zvysit a snazit sa hlavny subor pisat tak, aby bol zrejmy a jasny co sa ma diat
  - da sa vyrozumiet co sa tam deje a 'replikovat' test manualne ale asi to bude chcet vela namahy

- Z pohladu automatizacie:
  - moc `Sleep`-ov
  - `Switch window` by som urcite skoval do nejakeho keywordu uz len kvoli tomu ako sa tam robi s variable
  - nepouzivas vobec tu silu keyword-ov ako takych, v zasade to **programujes** na najnizsej moznej urovni

### Keywords subor

- Pozor na `Maximize Browser Window`
  - tu sme sa bavili, ze to v pripade nizkeho rozlisenia, nemusi nutne spravit to co ocakavas 
  - `Set Window Size` je preferovanejsie
    - rozlisenie ti moze zmenit vyzor webu, moze ti zmenit lokatory (spomen na www.artin.sk)
  
### Variables subor

- mas dost vela skoro 'absolutnych' xpathov
  - riadky 22 - 27
  - pozor na to, ten web sa moze menit aj v zavislosti od rozlisenia (vid vyssie)
  - takto 'detailny' lokator ti moze sposobovat velke problemy
- snaz sa vyhnut aj lokatorom s `*`
  - dovod je ten, ze ak pouzijes eg.  `//input[@id='ahoj']` tak sa deje:
    - idem cez vsetky elementy na stranke a `ak je element input` kontrolujem jeho id
  - v pripade `//*[@id='ahoj']`
    - idem cez vsetky elementy na stranke a ich id
    - moze to byt velky casovy rozdiel a aj pre citatela (automatizera) nemusi byt uplne jasne o aky element ide

### Test Cases subor

- cast: `Keywords`
  - Keyword: `Kontrola ceny poloziek v kosiku`
    - robil by som to parametrizovane a pouzival `should`, kedze je to validacny kw
    - nieco v style `Cart Items Should Have Value Less Than    ${argument}`
      - ak si spomenies na do/don't co ste mali v ramci lekcie, pise sa tam ze keyword by mal hovorit o tom:
      - CO sa robi
      - a nie AKO sa to robi
      - tak isto, z pohladu RF validacne keywordy obsahuju slovicko ***Should***
        - je dobre to dodrziavat ale zase je to len 'dohodnuta' konvencia, nic co by bolo daky blocker

- cast: `Test Cases`
  - tu je celkovo velmi nizka abstrakcia
  - pre nie automatizera je tam strasne moc nejasnych veci
  - vela `Sleep` keywordov
  - posobi to na mna tak dost nedorobeno

- zakomentovany teardown 


### Readme.md subor

- requirements urcite niesu pluginy do pycharmu
- chyba mi tam nejaky ten popis ako to vobec cele rozbehat / spustit


### requirements.txt subor

- tu je pouzity ten co sme pouzivali cross kurz
  - snad len tolko, ze na finalny projekt netreba `robotframework-pabot`
- je dobre ak v requirements je minimalny potrebny balik na rozbehanie

### Git repository

- *xml*, *html*,  subory by tam  nemali byt
  - su to tvoje lokalne subory s reportami
  - moze to byt pre nezaujateho zmatocne
- idealne je, ak folder obsahuje iba a len veci potrebne na run  tj `.robot`, respektive `.py` a mozno dalsie potrebne veci
- `chromedriver.exe` by tiez nemal byt sucast repository
  - moze to byt matuce, ten exe file nemusi fungovat s testami (kvoli nekopatibilite s chrome)
  - vo vseobecnosti sa snaz nedavat binarky do repository ak to nieje 100% nutne
- je to strasny mess
  - mas tam subory z akademie
  - do toho je tam final exam
  - velmi neprehladne, chcelo by to aspon final exam dat do zvlast foldra