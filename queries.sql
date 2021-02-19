--koliko su radnici naplatili usluga
with ukupna_zarada as (
    select jmbg, sum(cenausluge) as ukupno
    from zakaze_termin, usluga
    where zakaze_termin.kodusluge = usluga.kodusluge
    group by jmbg
    order by ukupno desc)


select zaposleni.imezaposlenog, prezimezaposlenog, ukupno
from zaposleni, ukupna_zarada
where zaposleni.jmbg = ukupna_zarada.jmbg;

--koliko su klijenti potrosili na usluge
with ukupno_potrosio as (
    select telefonklijenta, sum(cenausluge) as ukupno
    from zakaze_termin, usluga
    where zakaze_termin.kodusluge = usluga.kodusluge
    group by telefonklijenta
    order by ukupno desc)

select klijent.imeklijenta, klijent.prezimeklijenta, ukupno
from klijent, ukupno_potrosio
where klijent.telefonklijenta = ukupno_potrosio.telefonklijenta;

--koliko su radnici imali usluga
with broj_usluga as (
    select jmbg, count(*) as broj
    from zakaze_termin
    group by jmbg
    order by broj desc)


select zaposleni.imezaposlenog, prezimezaposlenog, broj
from zaposleni, broj_usluga
where zaposleni.jmbg = broj_usluga.jmbg;