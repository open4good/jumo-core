---
title: Positionnement conceptuel de Jumo
normative: false
audience: PUBLISHED_SUMMARY
lang: fr
---

# Positionnement conceptuel de Jumo

Ce document expose, pour un lecteur humain ou un agent, les concepts académiques et normatifs que
l'architecture de Jumo met en œuvre, ce qui la distingue d'un assistant conversationnel générique,
et pourquoi elle vise l'auditabilité et la certifiabilité par construction plutôt qu'après coup.
Il ne fait pas autorité : le contrat vivant est le métamodèle LinkML, les politiques Rego et les
ADR. Ce texte relie ces artefacts à la littérature qui les inspire.

## Thèse et problème humain

La vie numérique se fragmente entre courriels, agenda, messageries, dépôts de code, réunions,
domicile connecté et plusieurs fournisseurs d'IA. Un assistant capable d'appeler des outils ne
retire pas à la personne la charge de retenir chaque engagement ouvert, de décider quel agent voit
quelle information, de réconcilier des sorties contradictoires, de vérifier les actions, de
surveiller coûts et limites, de préserver les frontières entre clients, et de comprendre ce qui a
été fait en son nom.

Jumo vise à transférer le travail de coordination sans transférer la souveraineté. La valeur
défendable n'est pas un chatbot omnicanal de plus : c'est la couche de gouvernance — la séparation
entre ce qu'un modèle propose, ce qu'une politique autorise, ce qu'un exécutant de confiance
applique, et ce qu'une preuve vérifie. Cette séparation, et non l'agent conversationnel, est ce
que ce document positionne dans la littérature.

L'expérience recherchée combine une présence calme et une éthique de l'attention restreinte : le
système reste disponible et capable sans solliciter en continu. Les mesures de réussite ne sont pas
le volume de conversation ni le nombre d'actions d'agent, mais les engagements clarifiés, les
interruptions évitées, les risques détectés, les décisions soutenues, les effets vérifiés, le temps
rendu à la personne, et une confiance justifiée qui croît.

## Ce que Jumo n'est pas

Jumo n'est initialement ni une place de marché, ni un réseau social d'agents, ni un concurrent
générique de langage de workflow, ni un nouveau fournisseur de modèle, ni un remplacement de
GitHub, Temporal ou MCP — l'architecture actuelle s'appuie explicitement sur ces briques plutôt que
de s'y substituer. Ce n'est pas non plus un souverain autonome décidant des valeurs du propriétaire,
ni une autorité médicale ou spirituelle, ni une plateforme SaaS pleinement distribuée dès l'origine.

## Carte concept vers classe et règle

Chaque ligne relie une source externe à un mécanisme actuel du métamodèle ou de la politique. La
colonne « statut » distingue ce que la source soutient directement (**S**), un transfert limité
utile comme grille de lecture (**L**), et ce que la source challenge dans une équivalence trop
stricte (**C**) — reprenant la nuance déjà établie par l'audit organisationnel de 2026-08-05 plutôt
que de prétendre à une correspondance parfaite.

### Organisation : rôles, missions et couche déontique {#organisation-moise}

[Hübner, Sichman et Boissier](https://moise.sourceforge.net/doc/publications/Hubner-sbia2002.pdf)
séparent une spécification structurelle (rôles, groupes, hiérarchies), fonctionnelle (missions,
buts) et déontique (obligations reliant un rôle à une mission) — le modèle Moise+. Jumo retient des
rôles constitutionnels stables (`RoleDefinition`) et une couche d'obligations exécutables
(`PolicySet`, `PolicyRule`), mais les obligations que Jumo authentifie aujourd'hui sont surtout des
devoirs procéduraux de sécurité (vérification, aperçu, rédaction, authentification renforcée), pas
des missions au sens de Moise+. **S/L** : préserver la séparation rôle/politique sans revendiquer
une équivalence exacte avec la couche déontique de Moise+.

### Engagements sociaux {#engagements-sociaux}

[Chopra et Singh](https://www.lancaster.ac.uk/staff/chopraak/pdfs/contextualization-2006.pdf), avec
Yolum, définissent un engagement social comme une relation entre un débiteur et un créancier
conditionnée par un état à atteindre, dotée d'un cycle de vie (création, exécution, libération,
annulation, délégation). `WorkOrder` porte `debtor`, `creditor` et `condition` : un ordre accepté
n'est un engagement au sens de Chopra que muni de ces trois éléments et d'une trajectoire d'état
explicite. **S/L** : le cycle actuel (`PROPOSED`..`FAILED`) couvre l'analogue le plus proche côté
contrat Git ; le cycle complet créer/exécuter/libérer/annuler/déléguer relève du Matter/Episode
d'exécution, hors de ce module.

### Coordination par dépendance {#coordination-des-dependances}

[Malone et Crowston](https://crowston.syr.edu/sites/default/files/acmcs94.pdf) font de la
dépendance gérée, non de l'équipe entière, l'unité d'analyse de la coordination : prérequis,
ressource partagée, simultanéité appellent des mécanismes différents et coexistants. `TeamSpec`
porte `CoordinationMechanismBinding`, chacun scopé à la dépendance qu'il gouverne, plutôt qu'un
`mode` unique pour toute l'équipe. **S** : un mécanisme de coordination par dépendance, pas un
attribut d'équipe.

### VSM comme grille de diagnostic, pas comme implémentation {#vsm-diagnostic}

[Beer](https://www.tandfonline.com/doi/abs/10.1057/jors.1984.2) décrit un système viable comme
récursif, chaque système contenant et étant contenu dans un système viable de même forme, avec une
autonomie opérationnelle locale, un audit S3\*, un équilibre S3/S4, une perception d'environnement,
et une remontée algédonique en cas de déséquilibre. Nestor coordonne l'attention dans Jumo, ce qui
évoque le rôle S4 sans l'épuiser — S4 perçoit l'environnement et le futur, Nestor admet et route
aussi le travail présent. Centraliser toute l'attention peut réduire la variété de réponse requise
et créer un goulot. **L** : traiter VSM comme une liste de vérification diagnostique — canaux de
rétroaction manquants, autonomie locale, signal algédonique — pas comme une preuve d'implémentation
par la seule composition récursive.

### Autorisation continue {#autorisation-continue}

[Park et Sandhu](https://doi.org/10.1145/984334.984339) généralisent le contrôle d'accès en usage
control (UCON) : la décision porte sur des obligations, des conditions, une continuité et des
attributs mutables, pas sur un instant unique d'admission. [NIST SP
800-207](https://doi.org/10.6028/NIST.SP.800-207) formalise la même exigence pour une architecture
zero trust : aucune confiance implicite fondée sur la position réseau, vérification continue de
l'identité, de l'accès et du comportement. Un épisode long dans Jumo peut reprendre après que les
autorisations, la politique, la classification des données ou l'intention humaine ont changé — d'où
une décision d'autorisation rejouée à l'effet et après toute attente durable, plutôt qu'une seule
fois à l'admission. **C** de l'autorisation à l'admission comme suffisante ; **S** de la ré-
évaluation continue comme cible.

### Sécurité par capacités et séparation instructions/données {#separation-instructions-donnees}

[Greshake et al.](https://arxiv.org/abs/2302.12173) et le banc d'essai
[AgentDojo](https://proceedings.nips.cc/paper_files/paper/2024/hash/97091a5177d8dc64b1da8bf3e1f6fb54-Abstract-Datasets_and_Benchmarks_Track.html)
montrent l'exploitabilité du couplage modèle/outil ; [Zverev et
al.](https://proceedings.iclr.cc/paper_files/paper/2025/hash/a77eadda332b6d4a9ae1e0e4024555f2-Abstract-Conference.html)
(ICLR 2025) mesurent un taux élevé d'échec de la séparation instruction/donnée par simple
délimitation de contenu, y compris après réglage fin. [CaMeL](https://arxiv.org/abs/2503.18813)
(Debenedetti et al., Google DeepMind/ETH Zurich) répond par un flux de contrôle et de données
déterministe : les valeurs issues de contenu non fiable portent une capacité qui restreint ce qui
peut en être fait, et l'autorisation porte sur des valeurs concrètes, jamais sur un délimiteur.
`VariableTrust` marque le contenu `UNTRUSTED` comme provenance propagée, pas comme frontière de
sécurité en soi : le moteur clôture ce contenu et ne le traite jamais comme instruction, mais la
décision d'autorisation porte sur les valeurs d'argument concrètes. **S** pour garder l'autorisation
et l'application d'effet hors du modèle ; **C** pour tout délimiteur de prompt utilisé seul comme
frontière de sécurité.

### Flux d'information {#flux-dinformation}

[Denning](https://dl.acm.org/doi/10.1145/360051.360056) pose un treillis de classes de sécurité
pour raisonner sur un flux d'information autorisé. [Myers et
Liskov](https://www.cs.cornell.edu/andru/papers/iflow-tosem.pdf) décentralisent le modèle avec des
étiquettes propriétaire/lecteurs et une déclassification qui reste sous le contrôle du
propriétaire, jamais d'une racine unique. `InformationClassification`, `ReleaseCompartment` et
`ReleaseTransformation` séparent ce qu'un `DataScope` unique mélangeait — confidentialité,
compartiment d'audience et transformation de publication — en dimensions distinctes plutôt qu'en un
seul énuméré. **S** : la décomposition suit directement le treillis et le modèle décentralisé.

### Preuve et dossier d'assurance {#preuve-et-assurance}

Le [modèle de données PROV du W3C](https://www.w3.org/TR/prov-dm/) structure une preuve de
provenance autour d'entités, d'activités et d'agents. La [Structured Assurance Case
Metamodel](https://www.omg.org/spec/SACM/2.1/PDF) de l'OMG, dont dérive la Goal Structuring
Notation, relie une revendication à un argument et aux preuves qui le soutiennent. Aucun des deux
ne fait du volume de provenance une preuve en soi. `EvidenceProfile.claimCoverage` retient cette
distinction : ce qu'une classe de preuve soutient réellement, pas son seul volume. **L** : la
couverture de revendication, la méthode, la fraîcheur, la dépendance de source et les objections
possibles restent à représenter individuellement plutôt qu'à déduire du seul nombre de références.

### Sagas et récupération d'effet {#sagas-et-recuperation}

[Garcia-Molina et Salem](https://doi.org/10.1145/38713.38742) introduisent la saga pour les
transactions longues : une séquence de transactions compensables, où chaque étape porte sa propre
transaction de compensation, spécifique à l'application et elle-même faillible. `EffectRecoveryKind`
remplace un `reversible: boolean` unique par une énumération typée — nouvelle tentative,
déduplication, compensation, correction, réconciliation, fenêtre d'expiration, préjudice résiduel —
puisqu'un booléen ne peut dire laquelle de ces situations s'applique. **S** : la décomposition suit
directement l'argument des sagas.

### Diversité des pannes {#diversite-des-pannes}

[Knight et
Leveson](https://libraopen.library.virginia.edu/entities/publication/4ac33eeb-79b4-46e4-aef9-f6ec56a62286)
observent, sur vingt-sept versions développées indépendamment d'un même programme, davantage de
pannes coïncidentes que l'indépendance ne le prédisait — l'indépendance du processus de
développement ne garantit pas l'indépendance des pannes. Un `independenceGroup` déclaré dans Jumo
signale que des comptes partagent un groupe et ne sont donc pas indépendants ; il reste une
séparation déclarée, jamais une preuve d'indépendance. **C** comme preuve d'indépendance ; **S**
comme signal de séparation déclarée à documenter — un vecteur de diversité des pannes (fournisseur,
modèle, invite, sources, outils, cadrage) reste le signal le plus fin, non encore modélisé sous ce
nom exact dans le métamodèle actuel.

### Facteurs humains et attention proportionnée {#facteurs-humains}

[Endsley et Kiris](https://journals.sagepub.com/doi/10.1518/001872095779064555) montrent qu'un
niveau d'automatisation élevé réduit la conscience de la situation et la capacité à reprendre la
main en cas de panne de l'automatisation — le problème de la sortie de boucle. [Parasuraman,
Sheridan et Wickens](https://doi.org/10.1109/3468.844354) distinguent quatre étapes
automatisables — acquisition de l'information, analyse, sélection de décision, mise en œuvre — sur
un continuum de niveaux, plutôt qu'une automatisation tout ou rien. Multiplier les approbations
humaines n'améliore donc pas la sûreté de façon monotone : cela peut au contraire produire un
réflexe d'approbation sans lecture réelle. Jumo vise une automatisation proportionnée par type
d'action plutôt qu'un seuil uniforme d'approbation. **C** : plus d'approbations comme garantie
monotone de sûreté ; **S** : une automatisation différenciée par étape et par classe d'action.

## Conformité et auditabilité par construction {#conformite-et-auditabilite-par-construction}

La séparation modèle/politique/exécutant/preuve n'est pas seulement une préférence architecturale :
elle recoupe des exigences de plusieurs référentiels de conformité IA, vérifiées sur le web pendant
la rédaction de ce document (2026-08-23).

| Contrôle Jumo | Référentiel | Correspondance |
|---|---|---|
| État désiré en Git, état reconnu en PostgreSQL, historique en Temporal (ADR-0001) | [EU AI Act, article 12](https://artificialintelligenceact.eu/article/12/) | Enregistrement automatique des événements sur la durée de vie du système, avec horodatage de chaque usage. |
| Nestor propose, une politique Rego autorise, un exécutant de confiance applique, une preuve vérifie | [EU AI Act, article 14](https://artificialintelligenceact.eu/article/14/) | Supervision humaine effective, avec des personnes en mesure de comprendre les capacités du système et de détecter une dérive plutôt que de s'y fier par défaut. |
| `PolicySet`, `EvidenceProfile`, `ComplianceProfile`, `ControlCatalog` comme classes de premier ordre | [ISO/IEC 42001](https://www.iso.org/standard/42001) | Système de management de l'IA : gouvernance, gestion des risques, contrôles documentés sur le cycle de vie. |
| Les quatre fonctions Gouverner / Cartographier / Mesurer / Gérer de la politique et de la preuve | [NIST AI RMF 1.0](https://nvlpubs.nist.gov/nistpubs/ai/nist.ai.100-1.pdf) | Cadre volontaire structuré autour des mêmes quatre fonctions pour une IA digne de confiance. |
| Contrôle d'accès par capacité, revue de politique, obligation de preuve avant effet | [SOC 2, critères CC6 à CC8](https://secureframe.com/hub/soc-2/common-criteria) | Accès logique, opérations système et gestion du changement comme catégories distinctes de contrôle. |
| `contractRevision`, verrouillage `contract-sources.lock.yml`, signature et provenance des artefacts déployés | [SLSA](https://slsa.dev/spec/v1.2/about) | Niveaux de confiance croissants sur la provenance et l'intégrité de la chaîne de construction logicielle. |
| Exécutant de confiance hors du modèle, validation de valeurs concrètes plutôt que de délimiteurs de prompt | [OWASP Top 10 pour applications LLM (2025)](https://genai.owasp.org/llm-top-10/), [OWASP Top 10 pour applications agentiques (2026)](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/) | Injection de prompt (LLM01) et agentivité excessive comme risques de tête de liste ; capacités, permissions et autonomie à borner explicitement. |

Cette correspondance documente un recoupement constaté, pas une certification obtenue : aucun audit
externe n'a évalué Jumo au regard de ces référentiels à la date de rédaction.

## Hypothèses ouvertes

Les dix hypothèses suivantes, reprises de l'audit organisationnel de 2026-08-05, restent non
démontrées. Chacune associe un énoncé à un test qui la réfuterait.

| ID | Hypothèse | Ce qui la réfuterait |
|---|---|---|
| H1 | Un contrat organisationnel versionné se réutilise à travers des objectifs matériellement différents. | Une base de scripts par tâche ne demande pas plus d'éditions, ou les éditions d'organisation suivent celles des tâches une pour une. |
| H2 | Une exécution hybride contrainte-plus-plan bat à la fois les workflows fixes et le chat d'agent sans contrainte sur du travail incertain. | Aucun gain significatif à budget modèle/outil égal sur des changements et interruptions provoqués. |
| H3 | Une coordination spécifique à la dépendance réduit les pannes par rapport à un mode unique au niveau de l'équipe. | L'état supplémentaire ajoute de la latence sans réduire les relais manqués, les conflits ou les reprises. |
| H4 | Des parties et un cycle de vie d'engagement explicites réduisent le travail abandonné ou disputé. | Aucune amélioration face aux ordres de travail acceptés sur un jugement d'incident en aveugle. |
| H5 | La diversité déclarée prédit la valeur d'un vérificateur. | Le groupe d'indépendance ou le vecteur de diversité ne prédit pas la co-panne conditionnelle. |
| H6 | Une autorisation continue empêche les effets périmés sans perte de réactivité inacceptable. | Une autorité révoquée ou expirée produit encore un effet, ou les revérifications rendent le travail normal inutilisable. |
| H7 | Une déclassification typée empêche mieux la fuite inter-Realm qu'un contrôle par énuméré seul. | Des attaques par graine secrète ou par inférence traversent avec la même fréquence dans les deux cas. |
| H8 | L'autonomie progressive préserve la conscience de situation humaine. | Les personnes échouent à expliquer, interrompre ou récupérer correctement des épisodes après une réduction des approbations. |
| H9 | Des canaux de rétroaction inspirés du VSM améliorent la viabilité face à une perturbation. | L'audit, la perception d'environnement et le canal algédonique ajoutent un coût sans détection ni adaptation plus rapide. |
| H10 | Jumo étend l'horizon de tâche fiable plutôt que de seulement maintenir des workflows en vie. | La probabilité de complétion décroît comme la base de référence quand la durée, les relais et les surprises augmentent. |

## Différenciation

Jumo se distingue par la combinaison de quatre choix, chacun ordinaire pris isolément, rarement
réunis : l'autorité reste hors du modèle — un modèle propose, il n'autorise jamais lui-même un
effet ; trois autorités d'état séparées (Git pour le désiré, PostgreSQL pour le reconnu, Temporal
pour l'exécution) plutôt qu'une source unique qui mélangerait intention, décision et histoire ; le
Realm comme frontière de confidentialité et de délégation, pas une convention de nommage ; et un
corpus gouverné et budgété, où la prose elle-même est mesurée pour qu'elle ne devienne pas une
autorité de fait. Aucun concurrent répertorié dans l'audit organisationnel de 2026-08-05 ne réunit
ces quatre propriétés à la fois.

## Bibliographie

Sources vérifiées sur le web le 2026-08-23, sauf mention contraire.

- Hübner, Sichman, Boissier, spécification structurelle/fonctionnelle/déontique Moise+ : [article](https://moise.sourceforge.net/doc/publications/Hubner-sbia2002.pdf).
- Malone, Crowston, la coordination comme gestion de dépendances entre activités : [article](https://crowston.syr.edu/sites/default/files/acmcs94.pdf).
- Chopra, engagements débiteur/créancier/condition : [article](https://www.lancaster.ac.uk/staff/chopraak/pdfs/contextualization-2006.pdf).
- Beer, modèle du système viable : [Journal of the Operational Research Society](https://www.tandfonline.com/doi/abs/10.1057/jors.1984.2).
- Park, Sandhu, modèle UCON ABC de contrôle d'usage : [ACM DOI](https://doi.org/10.1145/984334.984339).
- NIST SP 800-207, architecture zero trust : [DOI](https://doi.org/10.6028/NIST.SP.800-207).
- Greshake et al., injection de prompt indirecte : [article](https://arxiv.org/abs/2302.12173).
- Debenedetti et al., AgentDojo : [NeurIPS 2024](https://proceedings.nips.cc/paper_files/paper/2024/hash/97091a5177d8dc64b1da8bf3e1f6fb54-Abstract-Datasets_and_Benchmarks_Track.html).
- Zverev et al., échec empirique de la séparation instruction/donnée : [ICLR 2025](https://proceedings.iclr.cc/paper_files/paper/2025/hash/a77eadda332b6d4a9ae1e0e4024555f2-Abstract-Conference.html).
- Debenedetti et al., CaMeL, flux de contrôle/données déterministe avec capacités : [article](https://arxiv.org/abs/2503.18813).
- Denning, modèle en treillis du flux d'information sécurisé : [Communications of the ACM](https://dl.acm.org/doi/10.1145/360051.360056).
- Myers, Liskov, étiquettes décentralisées, propriétaires/lecteurs et déclassification : [article](https://www.cs.cornell.edu/andru/papers/iflow-tosem.pdf).
- W3C, PROV-DM, modèle de données de provenance : [Recommendation](https://www.w3.org/TR/prov-dm/).
- OMG, Structured Assurance Case Metamodel v2.1 : [spécification](https://www.omg.org/spec/SACM/2.1/PDF).
- Garcia-Molina, Salem, sagas pour les transactions longues : [ACM](https://doi.org/10.1145/38713.38742).
- Knight, Leveson, évaluation expérimentale de l'indépendance en programmation multi-version : [University of Virginia](https://libraopen.library.virginia.edu/entities/publication/4ac33eeb-79b4-46e4-aef9-f6ec56a62286).
- Endsley, Kiris, le problème de performance hors-boucle : [DOI](https://doi.org/10.1518/001872095779064555).
- Parasuraman, Sheridan, Wickens, types et niveaux d'automatisation : [IEEE DOI](https://doi.org/10.1109/3468.844354).
- ISO/IEC 42001:2023, système de management de l'IA : [ISO](https://www.iso.org/standard/42001).
- Union européenne, AI Act, article 12 (journalisation) et article 14 (supervision humaine) : [texte annoté](https://artificialintelligenceact.eu/article/12/), [article 14](https://artificialintelligenceact.eu/article/14/).
- NIST AI 100-1, AI Risk Management Framework 1.0 : [PDF officiel](https://nvlpubs.nist.gov/nistpubs/ai/nist.ai.100-1.pdf).
- AICPA, critères de services de confiance SOC 2, CC6 à CC8 : [synthèse](https://secureframe.com/hub/soc-2/common-criteria).
- OpenSSF, Supply-chain Levels for Software Artifacts, spécification v1.2 : [SLSA](https://slsa.dev/spec/v1.2/about).
- OWASP Gen AI Security Project, Top 10 pour applications LLM (2025) : [OWASP](https://genai.owasp.org/llm-top-10/).
- OWASP Gen AI Security Project, Top 10 pour applications agentiques (2026) : [OWASP](https://genai.owasp.org/resource/owasp-top-10-for-agentic-applications-for-2026/).

Bibliographie académique élargie, reprise sans revérification individuelle de cette session,
disponible dans l'historique Git aux tags `pre-v0-ideation-2026-08-05` et
`pre-v0-ideation-continuation-2026-08-05` (le registre de sources de cette lignée archivée) : les
liens ci-dessus couvrent les sources citées par la carte conceptuelle de ce document, pas
l'intégralité de cette bibliographie plus large.
