[Back](..)

---

# Consultant en Logiciel Libres

## Expériences

### Professionnelles

*Mars 2016 - Aujourd'hui* **Consultant en Logiciel Libres** *Savoir-faire Linux*

> Savoir-faire Linux est une entreprise de consultants spécialisés dans le _Logiciel Libre_. Je fais parti de l'équipe Solution Industrielle qui est en charge de développer les _Systèmes Embarqués Linux_ qui équipent les objets connectés de nos clients.
> *  J'ai développé un framework en C++ 11 d'échange de données entre différents objets connectés. J'ai utilisé _ZeroMQ_ comme bus de communication et _Protobuf_ comme format pour les données échangées. J'ai développé un système de plug-in basé sur _ld_. Le code est couvert en utilisant _gcov_.
> *  J'ai mis à jour le logiciel embarqué d'un objet connecté vers la dernière version de _Yocto_. J'ai migré le système d'init vers systemd. J'ai résolu les problèmes bas niveau et système.
> *  J'ai personnalisé l'interface développée en _LuCI_ d'un périphérique réseau basé sur _OpenWRT_. J'ai compilé et configuré le démon docker pour faire fonctionner des images _Docker_ sur ce périphérique.
> *  J'ai créé le paquet _QtWebEngine_, la carte électronique _Raspberrypi 3 (64-bits)_ et résolu des problèmes de compilation dans _Buildroot_.

*Juillet 2010 - Septembre 2015* **Ingénieur Linux Embarqué** *Overkiz SAS, groupe Somfy*

> Overkiz est une entreprise spécialisée dans le «_Cloud Computing_» pour la domotique. Elle propose une solution qui connecte les objets de la maison à _Internet_ (_IoT_). Elle se compose d'une passerelle qui fait le lien entre les périphériques domotiques et ses serveurs. Il est possible de piloter ses objets de la maison grâce à son smart-phone et des Web-Services. J'ai fait partie de l'équipe qui développe le système Linux embarqué par la passerelle.
> *  J'étais coresponsable de la distribution Linux embarquée. J’intégrais des outils issus de la communauté du logiciel libre.
> *  J'étais responsable du déploiement des mises à jour du logiciel embarqué.
> *  J’ai mis en place le système de «Build automatisé» Yocto. Cet outil construit l’intégralité du système embarqué de la passerelle. Yocto permet de gagner de nombreuses heures à l’équipe tout en minimisant les erreurs liées à des interventions humaines lors de la construction de nouvelles versions.
> *  J'ai développé des frameworks internes et des applications ajoutant la prise en charge de nouveaux protocoles domotiques. J’ai été en charge du développement de l’application responsable du maintien de la connexion entre la passerelle et le serveur. Les frameworks et les applications sont développés en C++.
> *  J'ai développé des modules noyaux et ajouté le support de deux nouvelles cartes électroniques développées par notre équipe dans le noyau Linux.
> *  J'ai contribué sur des projets Libres (voir la section Contributions Open-Source).

### Stages

*2009* **Stage de Master** *LC Mobility*

> LC Mobility est une entreprise spécialisée dans l’accueil de doctorants étrangers. J’ai effectué une étude de marché sur la mobilité des étudiants australiens, en Australie.

*2008* **Stage Ingénieur de 3e année** *Freescale Semiconductors*

> J'ai été responsable du développement du pilote de charge de batterie de la plateforme de téléphonie mobile de Freescale (ARM-11). Ce téléphone mobile est alimenté par une batterie Li-ion. Il fonctionne sous Nokia S60 (Symbian OS). J'ai développé le pilote en C++ en utilisant les mécanismes propres à Symbian.

*2007* **Stage Ingénieur de 2e année** *Sagem Monetel*

> J’ai été chargé d’optimiser l’emprunte mémoire (dynamique et statique) d'une application C embarquée dans un terminal de paiement bancaire. J’ai utilisé les fichiers listing et mapping générés par le compilateur libre GNU/GCC pour localiser les parties de code utilisant le plus de ressources mémoires. J’ai réduit la taille de l’application de plus de 30 %.

*2004* **Stage Technicien de 2e année de DUT** *Sagem Monetel*

> J’ai eut la charge de porter une application C embarquée vers le compilateur libre GNU/GCC. J’ai également développé un outil de test de performance afin de démontrer la puissance du terminal de paiement durant une transaction bancaire.

### Contributions Open-Source

**[Buildroot](https://github.com/buildroot/buildroot/commits?author=gazoo74)** J'ai résolu des problèmes de compilation et ajouté le paquet QtWebEngine et la configuration Raspberry Pi 3 (64-bits).

**[genimage](https://github.com/pengutronix/genimage/commits?author=gazoo74)** J'ai ajouté une propriété à hdimage pour configurer la position de la partition étendue enregistrée dans le Master Boot Record.

**[Lighttpd](https://github.com/lighttpd/lighttpd1.4/commits?author=gazoo74)** J'ai ajouté le support des CRLs pour la vérification du certificat client et ignoré les erreurs de vérification du certificat client si l'option n'est pas forcée. J'ai résolu deux problèmes de compilation.

**[jack2](https://github.com/jackaudio/jack2/commits?author=gazoo74)** J'ai initialisé des variables membres non initialisées qui entraînaient des lectures invalides lorsqu'il était exécuté sous valgrind.

**[Noyau Linux](https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/log/?qt=grep&q=PORTAY)** J'ai ajouté deux nouvelles plateformes basées sur des SoC d'Atmel (device-tree).

**[Atmel at91bootstrap](https://github.com/linux4sam/at91bootstrap/commits?author=gazoo74)** J'ai ajouté le support d'UBI. Le but est d'améliorer les mises à jour critiques vis-à-vis d'éventuelles coupures de courant. Les volumes critiques, tels que les noyaux ou les bootloaders, sont dupliqués et stockés dans des volumes UBI statiques. Le bootstrap vérifie simplement l'intégrité du volume en utilisant le bit de mise à jour présent dans l'en-tête UBI.

**[CURL](https://github.com/bagder/curl/commits?author=gazoo74)** J'ai mis à jour libcurl afin qu'il soit compatible avec la dernière version des API de la librairie PolarSSL. J'ai également corrigé un bogue avec le mécanisme de polling qui entraînait un timeout lors de la négociation SSL avec le serveur distant.

**[OPKG](http://git.yoctoproject.org/cgit/cgit.cgi/opkg/log/?qt=grep&q=PORTAY)** J'ai amélioré l'intégration de CURL en autorisant certaines options liées à libcurl dans le fichier de configuration. J'ai également corrigé des comportements inattendus.

**[Dropbear](https://github.com/mkj/dropbear/commits?author=gazoo74)** J'ai corrigé les warnings de compilation du projet.

### Divers

*2000 - 2006* **Emplois saisonniers** *Plusieurs employeurs*

> 

## Éducation

*2008 - 2009* **Master MAE** *IAE*

> Année spéciale de Master en Management des Administrations et des Entreprises.

*2005 - 2008* **3I** *Polytech'Grenoble*

> Diplôme d’ingénieur en Informatique Industrielle et Instrumentation.

*2004 - 2005* **Licence TIC** *Université de Savoie*

> 2e année de Licence en Technologie de l’Information et de la Communication.

*2002 - 2004* **DUT ISI** *IUT de Valence*

> Diplôme universitaire de Technologie en Informatique et Systèmes Industriels.

*2001 - 2002* **DEUG SV** *Université de Savoie*

> 1ère année de Diplôme d’Etudes Universitaires Générales en Science de la Vie.

## Projets

*2009* **LHOG Minatec** *Amplificateur 900MHz*

> Conception d'un amplificateur GSM-900 au LHOG Minatec (laboratoire de micro nano technologie). Conception, simulation, routage, assemblage, tests et caractérisation.

*2008* **LHOG Minatec** *Convertisseur Analogique Numérique CMOS 6-bits*

> Conception d'un convertisseur analogique numérique 6-bits utilisant la technologie 0,35u au CIME Minatec (laboratoire de micro nano technologie). Les comparateurs CMOS ont été conçus via le logiciel Cadense, le correcteur et le décodeur ont été développés en VHDL.

*2006* **Polytech'Grenoble** *Assembleur HC12*

> Conception d'un assembleur en 2 passes pour le jeu d'instruction 68HC12. Cet outil en ligne de commande a été développé en C sur Linux.

*2005* **Université de Savoie** *Windows Desktop Search*

> Conception d'un moteur de recherche rapide pour Windows. J'ai développé cette application en Java sous l'environnement de développement Eclipse. Le moteur indexe tous les fichiers de l'ordinateur et permet à l'utilisateur de rechercher des fichiers via des expressions régulières. L'UI a été développée via le framework Swing.

*2004* **IUT de Valence** *Moteur de jeu 2D*

> Conception d'un moteur de jeu 2D basic en utilisant les librairies Microsoft Direct Draw. Le joueur se déplace sur une carte 2D avec gestion des collisions. J'ai développé le moteur en C++.

## Langues

*Français* **Langue maternelle**

> 

*Anglais* **Bonnes connaissances**

> J'ai voyagé un an en Australie et Nouvelle-Zélande (d'avril 2009 à mars 2010). J'ai obtenu 765 au TOEIC in 2008.

## Compétences techniques

*Outils informatiques* Microsoft Office, Eclipse, Xcode, \LaTeX

*Langages de programmation* Scripts Shell/Bash, Python, C/C++, STL, Assembleurs (68k, MIPS), Java, VHDL

*Autres* Linux Kernel, Git, Autotools, Cross-compilation, Yocto

## Centres d'intérêts

*BDE/BDS Polytech'Grenoble* Membre du bureau des étudiants de Polytech’Grenoble. Organisation du week-end d'intégration en 2006 (350 étudiants, 3 jours). Organisation de deux week-end ski en 2006 et 2007 (400 étudiants, 3 jours, 11 écoles d'ingénieurs du réseau Polytech).

*Montagne* Ski et randonnées.

*Tennis de table* Joueur, arbitre et entraineur (9 ans).

*Photographie* Amateur, Canon EOS 500D

## Références

*Overkiz, SAS.* Florent PELLARIN, Directeur des Opérations (*[f.pellarin@overkiz.com](mailto:f.pellarin@overkiz.com)*)

*Savoir-Faire Linux Inc.* Jérôme OUFELLA, Vice Président Technologie (*[jerome.oufella@savoirfairelinux.com](mailto:jerome.oufella@savoirfairelinux.com)*)
