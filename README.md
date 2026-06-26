# Šablóna pre záverečnú prácu s použitím LaTex
> [!WARNING]
> Aktuálna verzia šablóny nefunguje správne v Overleaf editore, keďže ten má problém s generovaním zoznamu skratiek a symbolov

Šablóna je určená pre písanie záverečných prác (bakalrských, diplomových, dizertačných) s použitím [LaTex-u](https://www.latex-project.org/). Jej cieľom je poskytnúť študentom jednoduchý a efektívny nástroj na tvorbu kvalitných záverečných prác, ktoré spĺňajú požiadavky akademických inštitúcií. Pre správne fungovanie šablóny je potrebné mať nainštalovaný LaTex-ový systém (napr. [TeX Live](https://tug.org/texlive/), [MiKTeX](https://miktex.org/download)), editor (napr. [TeXstudio](https://texstudio.org/#download), [Overleaf](https://www.overleaf.com/), [TeXworks](https://tug.org/texworks/)) a [Perl](https://www.perl.org/get.html).

Kompilácia dokumentu sa vykonáva pomocou `latexmk`, ktorý automaticky spravuje závislosti a zabezpečuje správne generovanie všetkých potrebných súborov. Na kompiláciu dokumentu použite príkaz:
```bash
latexmk -pdf -silent -synctex=1 "sablona_zp"
```

## Nastavenie šablóny
Po stiahnutí najnovšie verzie šablóny z [Releases](https://github.com/jakuko99/tex-sablona/releases) a jej rozbalení do požadovaného adresára, je potrebné upraviť súbor `sablona_zp.tex` podľa vašich potrieb. V tomto súbore môžete nastaviť základné informácie o práci, ako sú názov, autor, školiteľ a ďalšie pomocou príkazov:
```latex
\autorprace{Meno Priezvisko} % meno a priezvisko autora práce, ktoré sa bude zobrazovat na titulnej strane
\nazovprace{Názov záverečnej práce} % názov záverečnej práce, ktorý sa bude zobrazovat na titulnej strane
\newcommand{\podnazovprace}{Podnázov záverečnej práce} % v prípade že práca má aj podnázov
\veduciprace{Meno Školiteľa} % meno školiteľa, které se bude zobrazovat na titulnej strane
\newcommand{\konzultant}{Titul, meno a priezvisko konzultanta} % ak práca nemá konzultanta, tento riadok nie je potrebný
\typprace{Bakalárska} % typ záverečnej práce (Bakalárska, Diplomová, Dizertačná)
\typpracelokal{bakalárskej} % typ záverečnej práce v lokále (bakalárskej, diplomovej, dizertačnej)
\evidencnecisloprace{12345} % evidenčné číslo záverečnej práce, které se bude zobrazovat na titulnej strane
\fakulta{Fakulta elektrotechniky a informatiky} % názov fakulty, ktorý se bude zobrazovat na titulnej strane
\studijnyprogram{Kybernetika} % názov študijného programu, ktorý se bude zobrazovat na titulnej strane
\studijnyodbor{Riadenie procesov} % názov študijného odboru, ktorý se bude zobrazovat na titulnej strane
\rokodovzdania{2024} % rok odovzdania záverečnej práce, ktorý se bude zobrazovat na titulnej strane
\datumodovzdania{1.6.2024} % datum odovzdania, ktorý sa zobrazí v čestnom vyhlásení
\zadanieprace{subor.jpg} % sken zadania záverečej práce
\cestnevyhlasanie{text v čestnom vyhlásení} % text, ktorý se zobrazí v čestnom vyhlásení
\abstraktSK{text abstraktu v slovenskom jazyku} % text abstraktu v slovenskom jazyku
\abstraktEN{text abstraktu v anglickom jazyku} % text abstraktu v anglickom jazyku
\klucoveslovaSK{text kľúčových slov} % text kľúčových slov, oddelených čiarkov
\klucoveslovaEN{text kľúčových slov} % text kľúčových slov, oddelených čiarkov
\newcommand{\podakovanie}{(Poďakovanie nie je povinná časť záverečnej práce)} % text poďakovania, které se bude zobrazovat na titulnej strane, pokud nie je potrebné, zakomentujte tento riadok
```

## Pridávanie skratiek a symbolov
Skratky a symboly sa v tejto šablóne definujú pomocou príkazov `\skratka` a `\velicina`, ktoré je možné použiť kdekoľvek v texte. Príklad použitia:
```latex
\skratka{ML}{Machine Learning}{strojové učenie} % definícia skratky ML, ktorá se bude zobrazovat v zozname skratiek
\skr[sk]{ML} % pri prvom použití vráti ML (strojové učenie), pri každom ďalšom už len ML
\skr[en]{ML} % pri prvom použití vráti ML (Machine Learning), pri každom ďalšom už len ML, agrument [en] v tomto prípade nie je potrebný, keďže to je predvolená hodnota
\velicina{c}{km/s (kilometre za sekundu)}{rýchlosť svetla} % definícia veličiny c, která se bude zobrazovat v zozname symbolov
```
V tomto prípade nebolo možné príkaz pre pridádanie symbolov pomenovať `\symbol`, keďže latex obsahuje vstavaný príkaz z daným názvom.

## Vloženie titulných strán
Titulné strany sa vkladajú pomocou príkazu `\unizafrontmatter`, ktorý automaticky generuje titulnú stranu, stranu s čestným vyhlásením a stranu so zadaním práce. Tento príkaz by mal byť umiestnený na začiatku dokumentu, po nastavení základných informacií o práci.

## Vloženie záverečných strán
Záverečné strany, ako sú zoznam literatúry a zoznam príloh, sa vkladajú pomocou príkazu `\unizabackmatter`. Tento príkaz by by mal byť umiestnený na konci dokumentu, po hlavnom textu práce. Argumentom do tohto príkazu je názov .bib súboru, kde sú uložené zdroje použité v práci.
Za týmto príkazom nasledujú prílohy práce, ktoré sa definujú nasledovne:
```latex
\unizabackmatter{sablona_zp}

\newpage % príloha začína na novej stránke
\priloha{Názov prílohy} % názov prílohy, který se bude zobrazovat v zozname příloh
```

## Jednoduchý príklad použitia
```latex
\documentclass[12]{article} 
\usepackage{uniza_zp} % načítanie balíka uniza_zp, který obsahuje definície pre záverečné práce

% konfigurácia šablóny tu

\begin{document}
\unizafrontmatter % vloženie titulných strán - titulná strana, čestné vyhlásenie, zadanie práce

\addcontentsline{toc}{section}{Úvod} % pridanie nečíslovaných kapitol do obsahu
\section*{Úvod} % vloženie úvodu
Text úvodu

% text práce

\newpage % záver
\addcontentsline{toc}{section}{Záver}
\section*{Záver}
Text záveru

\unizabackmatter{sablona_zp} % vloženie záverečných strán - zoznam literatúry, zoznam príloh

\newpage
\priloha{Príklad prílohy} % prvá príloha práce

\end{document}
```
