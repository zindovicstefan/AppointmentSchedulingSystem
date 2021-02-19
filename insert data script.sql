insert into paket (idpaketa, nazivpaketa, cenapaketa) values (0, 'Osnovni', 2000);
insert into paket (idpaketa, nazivpaketa, cenapaketa) values (1, 'Viši', 2000);

insert into preduzece (pib, nazivpreduzeca, brojracuna) values ('01121998', 'Frizerski salon Stefan', '19981201');

-- alter session set nls_date_format = 'dd/MON/yyyy hh24:mi:ss'

insert into ugovor (idugovora, datumpotpisivanja, datumisteka, pib) values (0, TO_DATE('2021/01/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/02/01 00:00:00', 'yyyy/mm/dd hh24:mi:ss'), '01121998');

insert into sadrzi (pib, idugovora, idpaketa) values ('01121998', 0, 0);

insert into usluga (kodusluge, nazivusluge, cenausluge, vremetrajanjausluge, pib) values ('000', 'Muško šišanje', 200, INTERVAL '30' MINUTE	, '01121998');
insert into usluga (kodusluge, nazivusluge, cenausluge, vremetrajanjausluge, pib) values ('001', 'Žensko šišanje', 500, INTERVAL '60' MINUTE, '01121998');
insert into usluga (kodusluge, nazivusluge, cenausluge, vremetrajanjausluge, pib) values ('002', 'Pranje kose', 300, INTERVAL '20' MINUTE, '01121998');

insert into grad (postanskibroj, nazivgrada) values ('23000', 'Zrenjanin');

insert into poslovniobjekat (idposlovnogobjekta, nazivulice, brojulice, nazivposlovnogobjekta, postanskibroj, pib) values (0, 'Bulevar Veljka Vlahovia', '59', 'Frizerski salon Stefan Zrenjanin', '23000', '01121998');

insert into ima_uslugu (idposlovnogobjekta, kodusluge) values (0, '000');
insert into ima_uslugu (idposlovnogobjekta, kodusluge) values (0, '001');
insert into ima_uslugu (idposlovnogobjekta, kodusluge) values (0, '002');

insert into zaposleni (jmbg, imezaposlenog, prezimezaposlenog, lozinka, duznost, idposlovnogobjekta) values ('11101121998', 'Pera', 'Perić', 'pera', 'radnik', 0);
insert into zaposleni (jmbg, imezaposlenog, prezimezaposlenog, lozinka, duznost, idposlovnogobjekta) values ('22201121998', 'Marko', 'Marić', 'marko', 'radnik', 0);
insert into zaposleni (jmbg, imezaposlenog, prezimezaposlenog, lozinka, duznost, idposlovnogobjekta) values ('33301121998', 'Petar', 'Petrović', 'petar', 'radnik', 0);

insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (0, TO_DATE('2021/01/25 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '11101121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (1, TO_DATE('2021/01/26 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/26 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '11101121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (2, TO_DATE('2021/01/27 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/27 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '11101121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (3, TO_DATE('2021/01/25 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '22201121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (4, TO_DATE('2021/01/26 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/26 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '22201121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (5, TO_DATE('2021/01/27 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/27 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '22201121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (6, TO_DATE('2021/01/25 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '33301121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (7, TO_DATE('2021/01/26 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/26 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '33301121998');
insert into radnovreme (idradnogvremena, pocetakradnogvremena, krajradnogvremena, jmbg) values (8, TO_DATE('2021/01/27 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/27 17:00:00', 'yyyy/mm/dd hh24:mi:ss'), '33301121998');

insert into radnik (jmbg) values ('11101121998');
insert into radnik (jmbg) values ('22201121998');
insert into radnik (jmbg) values ('33301121998');

insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('11101121998', 0, '000');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('11101121998', 0, '001');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('11101121998', 0, '002');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('22201121998', 0, '000');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('22201121998', 0, '001');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('22201121998', 0, '002');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('33301121998', 0, '000');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('33301121998', 0, '001');
insert into pruza_uslugu (jmbg, idposlovnogobjekta, kodusluge) values ('33301121998', 0, '002');

insert into klijent (telefonklijenta, emailklijenta, prezimeklijenta, imeklijenta, blokiraojmbg, vremeblokaklijenta, razlogblokaklijenta) values ('0607222998', null, 'Vučić', 'Vukan', null, null, null);
insert into klijent (telefonklijenta, emailklijenta, prezimeklijenta, imeklijenta, blokiraojmbg, vremeblokaklijenta, razlogblokaklijenta) values ('0615333996', null, 'Marko', 'Markan', null, null, null);
insert into klijent (telefonklijenta, emailklijenta, prezimeklijenta, imeklijenta, blokiraojmbg, vremeblokaklijenta, razlogblokaklijenta) values ('0655553992', null, 'Mirko', 'Mirković', null, null, null);
insert into klijent (telefonklijenta, emailklijenta, prezimeklijenta, imeklijenta, blokiraojmbg, vremeblokaklijenta, razlogblokaklijenta) values ('0611155932', null, 'Jelena', 'Jelenić', null, null, null);

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/25 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '11101121998', '000', '0607222998', null, null, null);

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/25 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 08:50:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '11101121998', '002', '0607222998', null, null, null);  

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/26 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/26 09:30:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '11101121998', '001', '0611155932', null, null, null);

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/26 09:30:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/26 09:50:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '22201121998', '002', '0611155932', null, null, null);

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/27 08:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 08:30:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '33301121998', '000', '0615333996', null, null, null);

insert into zakaze_termin (vremepocetkatermina, vremekrajatermina, napomena, idposlovnogobjekta, jmbg, kodusluge, telefonklijenta, otkazaojmbg, vremeotkazatermina, razlogotkaza)
    values (TO_DATE('2021/01/27 10:00:00', 'yyyy/mm/dd hh24:mi:ss'), TO_DATE('2021/01/25 10:30:00', 'yyyy/mm/dd hh24:mi:ss'), null, 0, '33301121998', '000', '0655553992', null, null, null);



