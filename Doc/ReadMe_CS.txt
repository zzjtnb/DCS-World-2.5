Digital Combat Simulator (DCS) World


Fighter Collection, Eagle Dynamics (c) 2012. Všechna práva vyhrazena.

World DCS slouží jako sjednocující prostředí a grafické uživatelské rozhraní (GUI), pro různé DCS produkty (např. letadla). Z prostředí DCS World, je možné spustit jakýkoliv zakoupený DCS modul, sledovat zprávy ze světa DCS a nakupovat nové DCS produktů.

Novinky a aktualizace jsou k dispozici na následujících odkazech:
http://www.digitalcombatsimulator.com
http://forums.eagle.ru
http://www.dcs-uvp.cz 


================================================== =====
OBSAH

I.	SYSTÉMOVÉ POŽADAVKY
II.	INSTALACE
III.	DOKUMENTACE
IV.	SOUBORY MISÍ
V.	VIDEO
VI.	KONTAKTNÍ INFORMACE
VII.	DOPORUČENÍ PRO OPTIMÁLNÍ HERNÍ VÝKON
VIII.	NASTAVENÍ VÍCE DISPLEJŮ
IX.	ODINSTALACE
X.	FAQ

================================================== =====

I. SYSTÉMOVÉ POŽADAVKY

Minimální systémové požadavky: Windows XP, Vista, Windows 7, CPU P4 3GHz, RAM 2 GB; Video 512MB RAM, kompatibilní s DirectX9, 9GB na HDD, zvuková karta, DVD-ROM, klávesnice, myš.

Doporučené systémové požadavky: Windows XP, Vista, Windows 7, CPU Intel Core 2 Duo nebo AMD X2 3GHz, RAM 4 GB, grafická karta s 1024 MB RAM (ATI Radeon HD4870 + nebo nVidia GTX260 +), kompatibilní s DirectX9, 9 GB místa na pevném disku; zvuková karta, DVD-ROM, klávesnice, myš, joystick.

================================================== =====

II. INSTALACE

Po stažení instalačních souborů, poklepejte na instalační soubor a potom postupujte podle pokynů na obrazovce.

Doporučujeme vypnout antivirus a bezpečnostní software, protože mohou proces instalace značně zpomalit.


================================================== =====

III. DOKUMENTACE

Veškeré manuály jsou dodávány ve formátu PDF a lze je nalézt ve složce "Doc" v instalačním adresáři.

================================================== =====

IV. SOUBORY MISÍ

Všechny soubory s misemi mají příponu *.MIZ. Tyto soubory jsou klasické ZIP archivy a mohou být otevřeny jakýmkoliv softwarem pracujícím s archivy. Soubor MIZ bude vždy obsahovat soubor s misi a *.lua soubor s nastavením. V závislosti na návrhu mise je možné, že bude obsahovat i další, jako instruktážní obrázky, zvukové soubory a systémové soubory avioniky.

================================================== =====

V. VIDEO

Pro přehrávání video souborů z DCS misí si můžete stáhnout Theora kodek ze stránek: http://www.xiph.org/dshow/

================================================== =====

VI. KONTAKTNÍ INFORMACE

Obecné:
http://www.digitalcombatsimulator.com

Technická podpora
Pro pomoc s problémy se hrou je k dispozici oddělení technické podpory.
Než budete kontaktovat technickou podporu, tak si prosím připravte následující informace.
- Váš E-mail
- Systémové specifikace
- Operační systém
- Informace o DVD mechanikách a emulátorech mechanik
- Popis problému a (nebo) chybové zprávy

E-mail technické podpory: team@eagle.ru

http://support.digitalcombatsimulator.com/en/

Mnoho návrhů řešení lze nalézt na oficiální fórum: http://forums.eagle.ru nebo na českých stránkách http://dcs-uvp.cz

================================================== =====

VII. DOPORUČENÍ PRO OPTIMÁLNÍ HERNÍ VÝKON

Pokud máte potíže s plynulostí hry (nízké FPS), zkuste prosím následující kroky:

VOLBY - SYSTÉM - Grafika:
- Snižte DOHLED
- Snižte STÍNY
- Snižte TEXTURY
- Snižte SCÉNY
- Zkontrolujte, že voda nastavena na normální.
- Vypněte HEAT BLUR
- Snižte rozlišení hry
- Snižte MSAA (antialiasing)
- Vypněte TSSAA (průhlednost antialiasing)

VOLBY - GAMEPLAY:
- Vypněte zpětná zrcátka

POZNÁMKA
Pokud máte 2GB RAM nebo méně, měli byste nastavit nízké nastavení grafiky, aby se zabránilo nedostatku CTD paměti ve velkých misích.

TIPY A TRIKY
Pokud máte problémy se správou paměti ve 32bit Win 7 nebo Vista, můžete zkusit následující tip.
- Přejděte na příkazový řádek (Nabídka start - vyhledávání - napsat „CMD“).
- Napište: "bcdedit /set increaseuserva 3072" bez uvozovek a stiskněte klávesu Enter.
- Restartujte počítač a zkontrolujte, zda stále dochází ke ztrátě textury / pádům.
Pro toto nastavení budete možná muset dočasně zakázat UAC.
Povolení 3GB paměti v systému Windows XP
- Klikněte pravým tlačítkem myši na Tento počítač. Klikněte na tlačítko Vlastnosti.
- V dialogovém okně Vlastnosti systému, klikněte na kartu Upřesnit.
- Na kartě Upřesnit klikněte v rámečku Spuštění a zotavení systému na tlačítko Nastavení.
- Na kartě Spuštění a zotavení systému klikněte na tlačítko Upravit. V programu Microsoft®Notepad se otevře soubor Boot.ini.
- Vytvořte si záložní kopii souboru boot.ini. Poznámka: Soubory Boot.ini se mohou v jednotlivých počítačích lišit.
Vyberte následující řádek v souboru boot.ini:
multi(0)disk(0)rdisk(0)partition(2)\WINDOWS="Microsoft Windows XP Professional" /fastdetect
- Stisknutím Ctrl + C zkopírujte řádek a pak ho pomocí Ctrl + V vložte bezprostředně pod původní řádek.
Poznámka: Váš řetězec se může od tohoto ukázkového lišit, takže musíte kopírovat řetězec ze souboru boot.ini, a nikoli tento ukázkový.
Upravit zkopírovaný řádek aby obsahoval "/3GB", jak je uvedeno v následujícím příkladu:
multi(0)disk(0)rdisk(0)partition(2)\WINDOWS="Microsoft Windows XP Professional 3GB" /3GB /fastdetect
Poznámka: Žádné další řádky neupravujte.
- Uložte a zavřete soubor boot.ini.
- Klepnutím na tlačítko OK zavřete všechna otevřená okna.
- Restartujte počítač.
- Během spouštění, vyberte 3GB možnost. Pokud ji nevyberete systém se spustí ve výchozím stavu (s 2GB celkové paměti).
Poznámka: Pokud nastanou problémy při startu, může být nutné aktualizovat některé z vašich ovladačů.

================================================== =====

VIII. NASTAVENÍ VÍCE DISPLEJŮ

Herní okno je možné rozdělit na dva nebo tři displeje.
Chcete-li herní okno rozdělit, povolte v nastavení své grafické karty zobrazení pracovní ploch na více monitorech. Poté v nastavení hry (VOLBY- SYSTÉM) nastavte hodnotu celkového rozlišení a požadovaný počet monitorů (1, 3).
Nastavená konfigurace je uložena ve složce Config\MonitorSetup.

================================================== =====

IX. ODINSTALACE

Chcete-li odinstalovat hru z pevného disku, přejděte do: nabídka Start - Programy - Eagle Dynamics. Tady klikněte levým tlačítkem myši na možnost Odinstalovat DCS.
Alternativně: otevřete nabídku Start, zvolte Nastavení, poklepejte na Ovládací panely. V novém okně vyberte "Přidat nebo odebrat programy". Najděte DCS produkty, vyberte je a zvolte Odebrat.

================================================== =====

X. FAQ

Otázka: Proč mám problémy s instalací hry na systému Vista/Win7?
Odpověď: U systému Vista/Win7, je potřeba spustit setup.exe jako správce systému (klikněte pravým tlačítkem myši a vyberte). Pokud problémy přetrvávají, můžete při prvním spuštění hry zkusit vypnout řízení uživatelských účtů (UAC).

Otázka: Spouštím hru pomocí souboru Launcher.exe který je ve složce "<kořenová složka hry> \bin\stable\", ale po spuštění tohoto souboru se zobrazí chyba.
Odpověď: Hru je možné spustit pouze pomocí zástupců na ploše nebo ve start-menu.

Otázka: Proč se hra při načítání mise vrátí na plochu?
Odpověď: GUI a herní engine jsou dvě oddělené věci a při spuštění mise je vidět přechod z jednoho do druhého. Pro to existují dva důvody: 1) vypnutí GUI před zapnutím hry uvolní více zdrojů pro herní engine 2) GUI je napsáno v nové technologii, která není zpětně kompatibilní s herním enginem.

Otázka: Proč joystick Microsoft Force Feedback 2 reaguje na trim?
Odpověď: To je zvláštnost tohoto zařízení. Normální funkce os lze obnovit pomocí zaškrtávacího políčka "FF Tune" v nastavení hry.

Otázka: Hra nereaguje na příkazy z klávesnice – není možně spustit hru. Nejsem schopen ukládat a obnovovat profily svého joysticku.
Odpověď: Pokud používáte NewView, tak pravděpodobně právě to je zdroj problému. Musíte buď pomocí Alt-Tab skočit ven ze hry a zase zpět nebo před spuštěním hry přejmenovat složku NewView.
Při konfiguraci kláves prosím, nepoužívejte výchozí klávesové zkratky Windows (např. Ctrl + C, Ctrl + V, atd.) - může to vést k nesprávnému načtení profilu.

Otázka: Nahrál jsem si další misi z kampaně, ale před jejím spuštěním jsem si to rozmyslel a vyskočil jsem zpět do GUI, aniž bych hru spustil (zrušil pauzu). Zobrazila se mi ale hláška, abych dokončil předchozí misi. Co mám dělat?
Odpověď: Toto je vlastnost kampaní.
Pokud potřebujete ukončit misi kampaně poté, co se načte, je potřeba zrušit pozastavení a počkat alespoň sekundu od startu mise. Poté je možné misi bezpečně ukončit.

=======================================================

Užijte si hru!
Eagle Dynamics :)