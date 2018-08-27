#!/bin/bash 
# Standalone word-of-the-day script
# Based on Sudocabulary, Apache v2.0: https://github.com/badarsh2/Sudocabulary/blob/master/LICENSE

wordarray=( 'ABATE' 'ABDICATE' 'ABERRANT' 'ABEYANCE' 'ABJECT' 'ABJURE' 'ABSCISSION' 'ABSCOND' 'ABSTEMIOUS' 'ABSTINENCE' 'ABYSMAL' 'ACCRETION' 'ACCRUE' 'ADAMANT' 'ADJUNCT' 'ADMONISH' 'ADULTERATE' 'AESTHETIC' 'AFFECTED' 'AFFINITY' 'AGGRANDIZE' 'AGGREGATE' 'ALACRITY' 'ALCHEMY' 'ALLAY' 'ALLEVIATE' 'ALLOY' 'ALLURE' 'AMALGAMATE' 'AMBIGUOUS' 'AMBIVALENCE' 'AMBROSIA' 'AMELIORATE' 'AMENABLE' 'AMENITY' 'AMULET' 'ANACHRONISM' 'ANALGESIC' 'ANALOGOUS' 'ANARCHY' 'ANODYNE' 'ANOMALOUS' 'ANTECEDENT' 'ANTEDILUVIAN' 'ANTIPATHY' 'APATHY' 'APEX' 'APOGEE' 'APOPHTHEGM' 'APPEASE' 'APPELLATION' 'APPOSITE' 'APPRISE' 'APPROBATION' 'APPROPRIATE' 'APROPOS' 'ARABESQUE' 'ARCHAEOLOGY' 'ARDOUR' 'ARDUOUS' 'ARGOT' 'ARREST' 'ARTEFACT' 'ARTLESS' 'ASCETIC' 'ASPERITY' 'ASPERSION' 'ASSIDUOUS' 'ASSUAGE' 'ASTRINGENT' 'ASYLUM' 'ATAVISM' 'ATTENUATE' 'AUDACIOUS' 'AUSTERE' 'AUTONOMOUS' 'AVARICE' 'AVER' 'AVOCATION' 'AVUNCULAR' 'AXIOMATIC' 'BACCHANALIAN' 'BANAL' 'BANTER' 'BARD' 'BAWDY' 'BEATIFY' 'BEDIZEN' 'BEHEMOTH' 'BELIE' 'BENEFICENT' 'BIFURCATE' 'BLANDISHMENT' 'BLASÉ' 'BOLSTER' 'BOMBASTIC' 'BOORISH' 'BOVINE' 'BRAZEN' 'BROACH' 'BUCOLIC' 'BURGEON' 'BURNISH' 'BUTTRESS' 'CACOPHONOUS' 'CADGE' 'CALLOUS' 'CALUMNY' 'CANARD' 'CANON' 'CANT' 'CANTANKEROUS' 'CAPRICIOUS' 'CAPTIOUS' 'CARDINAL' 'CARNAL' 'CARPING' 'CARTOGRAPHY' 'CASTE' 'CASTIGATION' 'CATACLYSM' 'CATALYST' 'CATEGORICAL' 'CAUCUS' 'CAUSAL' 'CAUSTIC' 'CELESTIAL' 'CENTRIFUGAL' 'CENTRIPETAL' 'CHAMPION' 'CHASTEN' 'CHICANERY' 'CHIVALRY' 'CHURLISH' 'CIRCUITOUS' 'CLAIRVOYANT' 'CLAMOUR' 'CLIQUE' 'COAGULATE' 'CLOISTER' 'COALESCE' 'CODA' 'CODIFY' 'COGNIZANT' 'COLLAGE' 'COMMENSURATE' 'COMPENDIUM' 'COMPLACENT' 'COMPLAISANT' 'COMPLEMENT' 'COMPLIANT' 'COMPUNCTION' 'CONCAVE' 'CONCILIATORY' 'CONCOCT' 'CONCOMITANT' 'CONDONE' 'CONFOUND' 'CONGENIAL' 'CONJUGAL' 'CONNOISSEUR' 'CONSCRIPT' 'CONSECRATE' 'CONTEND' 'CONTENTIOUS' 'CONTINENCE' 'CONTRITE' 'CONTUMACIOUS' 'CONUNDRUM' 'CONTIGUOUS' 'CONVENTION' 'CONVERGE' 'CONVEX' 'CONVIVIAL' 'CONVOLUTED' 'COPIOUS' 'COQUETTE' 'CORNUCOPIA' 'COSMOLOGY' 'COVERT' 'COVETOUS' 'COZEN' 'CRAVEN' 'CREDENCE' 'CREDO' 'DAUNT' 'DEARTH' 'DEBAUCHERY' 'DECORUM' 'DEFAME' 'DEFAULT' 'DEFERENCE' 'DEFUNCT' 'DELINEATE' 'DEMOGRAPHIC' 'DEMOTIC' 'DEMUR' 'DENIGRATE' 'DENIZEN' 'DENOUEMENT' 'DERIDE' 'DERIVATIVE' 'DESICCATE' 'DESUETUDE' 'DESULTORY' 'DETERRENT' 'DETRACTION' 'DIAPHANOUS' 'DIATRIBE' 'DICHOTOMY' 'DIFFIDENCE' 'DIFFUSE' 'DIGRESSION' 'DIRGE' 'DISABUSE' 'DISCERNING' 'DISCOMFIT' 'DISCORDANT' 'DISCREDIT' 'DISCREPANCY' 'DISCRETE' 'DISCRETION' 'DISINGENUOUS' 'DISINTERESTED' 'DISJOINTED' 'DISMISS' 'DISPARAGE' 'DISPARATE' 'DISSEMBLE' 'DISSEMINATE' 'DISSIDENT' 'DISSOLUTION' 'DISSONANCE' 'DISTEND' 'DISTIL' 'DISTRAIT' 'DIVERGE' 'DIVEST' 'DIVULGE' 'DOCTRINAIRE' 'DOCUMENT' 'DOGGEREL' 'DOGMATIC' 'DORMANT' 'DROSS' 'DUPE' 'EBULLIENT' 'ECLECTIC' 'EFFERVESCENCE' 'EFFETE' 'EFFICACY' 'EFFRONTERY' 'EGOISM' 'EGOTISTICAL' 'ELEGY' 'ELICIT' 'ELIXIR' 'ELYSIAN' 'EMACIATED' 'EMBELLISH' 'EMOLLIENT' 'EMPIRICAL' 'EMULATE' 'ENCOMIUM' 'ENDEMIC' 'ENERVATE' 'ENGENDER' 'ENHANCE' 'ENTOMOLOGY' 'ENUNCIATE' 'EPHEMERAL' 'EPISTEMOLOGY' 'EQUABLE' 'EQUANIMITY' 'EQUIVOCATION' 'ERRANT' 'ERUDITE' 'ESOTERIC' 'ESSAY' 'ESTIMABLE' 'ETHNOCENTRIC' 'AETIOLOGY' 'ETYMOLOGY' 'EUGENICS' 'EULOGY' 'EUPHEMISM' 'EUPHORIA' 'EUTHANASIA' 'EVINCE' 'EVOCATIVE' 'EXACERBATE' 'EXACT' 'EXCULPATE' 'EXECRABLE' 'EXHORT' 'EXIGENCY' 'EXISTENTIAL' 'EXORCISE' 'EXPATIATE' 'EXPATRIATE' 'EXPIATE' 'EXPLICATE' 'EXPOSITORY' 'EXTANT' 'EXTEMPORANEOUS' 'EXTIRPATE' 'EXTRANEOUS' 'EXTRAPOLATION' 'EXTRINSIC' 'FACETIOUS' 'FACILITATE' 'FACTOTUM' 'FALLACIOUS' 'FALLOW' 'FATUOUS' 'FAUNA' 'FAWNING' 'FELICITOUS' 'FERAL' 'FERVOUR' 'FOETID' 'FETTER' 'FIAT' 'FIDELITY' 'FILIBUSTER' 'FINESSE' 'FISSURE' 'FLAG' 'FLEDGLING' 'FLORA' 'FLORID' 'FLOURISH' 'FLOUT' 'FLUX' 'FOMENT' 'FORBEARANCE' 'FORESTALL' 'FORMIDABLE' 'FORSWEAR' 'FOUNDER' 'FRACAS' 'FRACTIOUS' 'FRESCO' 'FRIEZE' 'FROWARD' 'FRUGALITY' 'FULMINATE' 'FULSOME' 'FUSION' 'FUTILE' 'GAINSAY' 'GAMBOL' 'GARRULOUS' 'GAUCHE' 'GENIALITY' 'GERRYMANDER' 'GLIB' 'GOAD' 'GOSSAMER' 'GOUGE' 'GRANDILOQUENT' 'GREGARIOUS' 'GROUSE' 'GUILELESS' 'GUISE' 'GULLIBLE' 'GUSTATORY' 'HALCYON' 'HALLOWED' 'HARANGUE' 'HARROWING' 'HERBIVOROUS' 'HERMETIC' 'HETERODOX' 'HIEROGLYPHICS' 'HIRSUTE' 'HISTRIONIC' 'HOMOEOSTASIS' 'HOMILY' 'HOMOGENEOUS' 'HYPERBOLE' 'ICONOCLASTIC' 'IDOLATRY' 'IGNEOUS' 'IMBROGLIO' 'IMMUTABLE' 'IMPAIR' 'IMPASSIVE' 'IMPECUNIOUS' 'IMPEDE' 'IMPERMEABLE' 'IMPERTURBABLE' 'IMPERVIOUS' 'IMPINGE' 'IMPLACABLE' 'IMPLAUSIBLE' 'IMPLICIT' 'IMPLODE' 'IMPRECATION' 'IMPUTE' 'INADVERTENTLY' 'INCARNATE' 'INCHOATE' 'INCONGRUITY' 'INCONSEQUENTIAL' 'INCORPORATE' 'INCURSION' 'INDETERMINATE' 'INDIGENCE' 'INDOLENT' 'INELUCTABLE' 'INERT' 'INGENUOUS' 'INHERENT' 'INNOCUOUS' 'INSENSIBLE' 'INSINUATE' 'INSIPID' 'INSOUCIANT' 'INSULARITY' 'INSUPERABLE' 'INTANGIBLE' 'INTERDICT' 'INTERNECINE' 'INTERPOLATE' 'INTERREGNUM' 'INTIMATE' 'INTRACTABLE' 'INTRANSIGENCE' 'INTROSPECTIVE' 'INUNDATE' 'INURED' 'INVECTIVE' 'INVEIGH' 'INVEIGLE' 'INVETERATE' 'INVIDIOUS' 'IRASCIBLE' 'IRRESOLUTE' 'ITINERANT' 'ITINERARY' 'JAUNDICED' 'JIBE' 'JOCOSE' 'JUGGERNAUT' 'JUNTA' 'JUXTAPOSE' 'KUDOS' 'LABILE' 'LACONIC' 'LAMBASTE' 'LASCIVIOUS' 'LASSITUDE' 'LATENT' 'LAUD' 'LETHARGIC' 'LEVEE' 'LEVITY' 'LIBERAL' 'LIBERTINE' 'LIBIDO' 'LILLIPUTIAN' 'LIMN' 'LIMPID' 'LINGUISTIC' 'LITANY' 'LITERATI' 'LITIGATION' 'LOG' 'LOQUACIOUS' 'LUCID' 'LUCRE' 'LUMINOUS' 'LUSTROUS' 'MACHIAVELLIAN' 'MACHINATIONS' 'MAELSTROM' 'MAGNANIMITY' 'MALIGN' 'MALINGER' 'MALLEABLE' 'MAVERICK' 'MEGALOMANIA' 'MENAGERIE' 'MENDACIOUS' 'MENDICANT' 'MERETRICIOUS' 'MESMERISE' 'METAMORPHOSIS' 'METAPHYSICS' 'METEOROLOGICAL' 'METICULOUS' 'METTLE' 'METTLESOME' 'MICROCOSM' 'MILITATE' 'MINATORY' 'MINUSCULE' 'MINUTIA' 'MISANTHROPE' 'MISCELLANY' 'MISCREANT' 'MISOGYNIST' 'MITIGATE' 'MNEMONIC' 'MODICUM' 'MOLLIFY' 'MONOLITHIC' 'MOROSE' 'MOTLEY' 'MULTIFARIOUS' 'MUNDANE' 'NECROMANCY' 'NEGATE' 'NEOLOGISM' 'NEOPHYTE' 'NEXUS' 'NONPLUSSED' 'NOSTALGIA' 'NOSTRUM' 'NUGATORY' 'OBDURATE' 'OBSEQUIOUS' 'OBSEQUIES' 'OBVIATE' 'OCCLUDE' 'OCCULT' 'ODYSSEY' 'OFFICIOUS' 'OLFACTORY' 'OLIGARCHY' 'ONEROUS' 'ONOMATOPOEIA' 'OPPROBRIUM' 'ORNITHOLOGIST' 'OSCILLATE' 'OSTENTATIOUS' 'OVERWEENING' 'PAEAN' 'PALAEONTOLOGY' 'PALLID' 'PANEGYRIC' 'PARAGON' 'PARTISAN' 'PATHOLOGICAL' 'PATOIS' 'PAUCITY' 'PEDANTIC' 'PELLUCID' 'PENCHANT' 'PENURY' 'PEREGRINATION' 'PEREMPTORY' 'PERENNIAL' 'PERFIDIOUS' 'PERFUNCTORY' 'PERIGEE' 'PERMEABLE' 'PERTURB' 'PERVASIVE' 'PETULANT' 'PHLEGMATIC' 'PHOENIX' 'PHYSIOGNOMY' 'PIETY' 'PIQUANT' 'PIQUE' 'PLACATE' 'PLACID' 'PLAINTIVE' 'PLASTICITY' 'PLATITUDE' 'PLATONIC' 'PLETHORA' 'PLUMB' 'PLUME' 'PLUMMET' 'PLUTOCRACY' 'POROUS' 'POSEUR' 'PRAGMATIC' 'PRATE' 'PRATTLE' 'PREAMBLE' 'PRECARIOUS' 'PRECEPT' 'PRECIPITATE' 'PRECURSOR' 'PRE-EMPT' 'PREHENSILE' 'PREMONITION' 'PRESAGE' 'PRESUMPTUOUS' 'PRETERNATURAL' 'PREVARICATE' 'PRIMORDIAL' 'PRISTINE' 'PROBITY' 'PROBLEMATIC' 'PRODIGAL' 'PROFOUND' 'PROHIBITIVE' 'PROLIFERATE' 'PROPITIATE' 'PROPENSITY' 'PROPRIETY' 'PROSCRIBE' 'PROVIDENT' 'PUISSANT' 'PUNCTILIOUS' 'PUNGENT' 'PURPORT' 'PUSILLANIMOUS' 'QUAGMIRE' 'QUAIL' 'QUALIFIED' 'QUALM' 'QUERY' 'QUIBBLE' 'QUIESCENT' 'QUORUM' 'RACONTEUR' 'RAIL' 'RAIMENT' 'RAMIFICATION' 'RAREFIED' 'RATIONALE' 'REBUS' 'RECALCITRANT' 'RECANT' 'RECLUSE' 'RECONDITE' 'REDOUBTABLE' 'REFRACTORY' 'REFRACT' 'REFULGENT' 'REFUTE' 'REGALE' 'RELEGATE' 'REMONSTRATE' 'RENEGE' 'REPARATION' 'REPINE' 'REPRISE' 'REPROACH' 'REPROBATE' 'REPUDIATE' 'RESCIND' 'RESOLUTION' 'RESOLVE' 'RETICENT' 'REVERENT' 'RIPOSTE' 'ROCOCO' 'RUBRIC' 'RUE' 'RUSE' 'SAGE' 'SALACIOUS' 'SALUBRIOUS' 'SALUTARY' 'SANCTION' 'SARDONIC' 'SARTORIAL' 'SATIATE' 'SATURATE' 'SATURNINE' 'SATYR' 'SAVOUR' 'SCHEMATIC' 'SECRETE' 'SEDITION' 'SEDULOUS' 'SEISMIC' 'SENSUAL' 'SENSUOUS' 'SENTIENT' 'SERVILE' 'SEXTANT' 'SHARD' 'SIDEREAL' 'SIMIAN' 'SIMILE' 'SINECURE' 'SINGULAR' 'SINUOUS' 'SCEPTIC' 'SOBRIETY' 'SODDEN' 'SOLICITOUS' 'SOLILOQUY' 'SOLVENT' 'SOMATIC' 'SOPORIFIC' 'SORDID' 'SPECIOUS' 'SPECTRUM' 'SPENDTHRIFT' 'SPORADIC' 'SQUALOR' 'STACCATO' 'STAUNCH' 'STENTORIAN' 'STIGMA' 'STINT' 'STIPULATE' 'STOLID' 'STRATIFIED' 'STRIATED' 'STRICTURE' 'STRIDENT' 'STRUT' 'STULTIFY' 'STUPEFY' 'STYGIAN' 'SUBPOENA' 'SUBSIDE' 'SUBSTANTIATE' 'SUBSTANTIVE' 'SUBSUME' 'SUBVERSIVE' 'SUCCOUR' 'SUFFRAGE' 'SUNDRY' 'SUPERSEDE' 'SUPINE' 'SUPPLANT' 'SUPPLIANT' 'SUPPLICANT' 'SUPPOSITION' 'SYLLOGISM' 'SYLVAN' 'TACIT' 'TALISMAN' 'TANGENTIAL' 'TAUTOLOGY' 'TAXONOMY' 'TENET' 'TENUOUS' 'TERRESTRIAL' 'THEOCRACY' 'THESPIAN' 'TIMBRE' 'TIRADE' 'TOADY' 'TOME' 'TORPOR' 'TORQUE' 'TORTUOUS' 'TOUT' 'TRACTABLE' 'TRANSGRESSION' 'TRANSIENT' 'TRANSLUCENT' 'TRAVAIL' 'TRAVESTY' 'TREATISE' 'TREMULOUS' 'TREPIDATION' 'TRUCULENCE' 'TRYST' 'ANOMIE' 'TUMID' 'TURBID' 'TURGID' 'TUTELARY' 'UNCANNY' 'UNDULATING' 'UNFEIGNED' 'UNTENABLE' 'UNTOWARD' 'USURY' 'VACILLATE' 'VACUOUS' 'VALEDICTORY' 'VAPID' 'VARIEGATED' 'VAUNT' 'VENAL' 'VENDETTA' 'VENERATE' 'VERACIOUS' 'VERBOSE' 'VERTIGO' 'VEXATION' 'VIABLE' 'VINDICTIVE' 'VIRTUOSO' 'VISAGE' 'VISCOUS' 'VITIATE' 'VITUPERATIVE' 'VIVISECTION' 'VOGUE' 'VOLATILE' 'VORTEX' 'WARRANTED' 'WARY' 'WELTER' 'WHIMSICAL' 'WHIMSY' 'WISTFUL' 'ZEALOT' 'ZEALOTRY' 'DE FACTO' 'DEVIANT' 'DEFER' 'PLATONIC' 'DISCERN' 'BIONICS' 'HEURISTIC' 'EQUITABLE' 'GUILE' 'REDUCTIONISTIC' 'INERTIA' 'PATHOS' 'PEDANT' ) 
meaningarray=( "TO DECREASE; REDUCE" "TO GIVE UP A POSITION, RIGHT, OR POWER" "DEVIATING FROM WHAT IS NORMAL" "TEMPORARY SUPPRESSION OR SUSPENSION" "MISERABLE; PITIFUL" "TO REJECT; ABANDON FORMALLY" "N. THE ACT OF CUTTING; THE NATURAL SEPARATION OF A LEAF OR OTHER PART OF A PLANT, V. TO CUT OFF OR AWAY (ABSCISE)" "TO DEPART SECRETLY" "MODERATE IN APPETITE" "THE GIVING UP OF CERTAIN PLEASURES" "VERY BAD" "GROWTH IN SIZE OR INCREASE IN AMOUNT" "TO ACCUMULATE; GROW BY ADDITIONS" "UNCOMPROMISING; UNYIELDING" "SOMETHING ADDED, ATTACHED, OR JOINED" "TO CAUTION OR REPRIMAND" "TO CORRUPT OR MAKE IMPURE" "ADJ. RELATING TO BEAUTY OR ART, N. A CONCEPTION OF WHAT IS ARTISTICALLY BEAUTIFUL" "PRETENTIOUS, PHONY" "FONDNESS; LIKING; SIMILARITY" "TO MAKE LARGER OR GREATER" "ADJ. AMOUNTING TO A WHOLE; TOTAL, V. TO COLLECT INTO A MASS, N. COLLECTIVE MASS OR SUM" "CHEERFUL WILLINGNESS; EAGERNESS; SPEED" "MEDIEVAL CHEMICAL PHILOSOPHY BASED ON CHANGING METAL INTO GOLD; A SEEMINGLY MAGICAL POWER OR PROCESS OF TRANSMUTATION" "TO LESSEN; EASE; SOOTHE" "TO RELIEVE; IMPROVE PARTIALLY" "A COMBINATION; A MIXTURE OF TWO OR MORE METALS" "THE POWER TO ENTICE BY CHARM" "TO COMBINE INTO A UNIFIED WHOLE" "UNCLEAR OR DOUBTFUL IN MEANING" "THE STATE OF HAVING CONFLICTING EMOTIONAL ATTITUDES" "SOMETHING DELICIOUS; THE FOOD OF THE GODS" "TO IMPROVE" "AGREEABLE; COOPERATIVE; SUITED" "SOMETHING THAT INCREASES COMFORT" "ORNAMENT WORN AS A CHARM AGAINST EVIL SPIRITS" "SOMETHING OUT OF THE PROPER TIME" "MEDICATION THAT REDUCES OR ELIMINATES PAIN" "ADJ. COMPARABLE, N. A SIMILARITY IN SOME WAYS BETWEEN THINGS THAT ARE OTHERWISE DISSIMILAR (ANALOGY)" "N. ABSENCE OF GOVERNMENT; STATE OF DISORDER, ADJ. LACKING ORDER OR CONTROL (ANARCHIC)" "N. SOMETHING THAT CALMS OR SOOTHES PAIN, ADJ. RELAXING, OR CAPABLE OF SOOTHING PAIN" "IRREGULAR; DEVIATING FROM THE NORM" "SOMETHING THAT COMES BEFORE" "PREHISTORIC" "DISLIKE; HOSTILITY" "INDIFFERENCE" "THE HIGHEST POINT" "THE POINT IN AN ORBIT MOST DISTANT FROM THE BODY BEING ORBITED; THE HIGHEST POINT" "A TERSE, WITTY SAYING" "TO CALM; PACIFY; PLACATE" "NAME" "STRIKINGLY APPROPRIATE AND RELEVANT" "TO INFORM" "PRAISE; APPROVAL" "TO TAKE POSSESSION FOR ONE'S OWN USE; CONFISCATE" "RELEVANT" "ORNATE DESIGN FEATURING INTERTWINED CURVES; A BALLET POSITION IN WHICH ONE LEG IS EXTENDED IN BACK WHILE THE OTHER SUPPORTS THE WEIGHT OF THE BODY" "THE STUDY OF MATERIAL EVIDENCE OF PAST HUMAN LIFE" "GREAT EMOTION OR PASSION" "EXTREMELY DIFFICULT; LABORIOUS" "A SPECIALIZED VOCABULARY USED BY A GROUP" "TO STOP; TO SEIZE" "ITEM MADE BY HUMAN CRAFT" "GUILELESS; NATURAL" "N. ONE WHO PRACTICES SELF-DENIAL, ADJ. SELF-DENYING OR AUSTERE" "SEVERITY; HARSHNESS; IRRITABILITY" "SLANDER; FALSE RUMOUR" "DILIGENT; HARD-WORKING" "TO MAKE LESS SEVERE" "HARSH; SEVERE" "PLACE OF REFUGE OR SHELTER" "IN BIOLOGY, THE REAPPEARANCE OF A CHARACTERISTIC IN AN ORGANISM AFTER SEVERAL GENERATIONS OF ABSENCE; INDIVIDUAL OR A PART THAT EXHIBITS ATAVISM; RETURN OF A TRAIT AFTER A PERIOD OF ABSENCE" "TO WEAKEN" "BOLD; DARING" "STERN; UNADORNED" "SELF-GOVERNING; INDEPENDENT" "GREED" "TO AFFIRM; DECLARE TO BE TRUE" "SECONDARY OCCUPATION" "LIKE AN UNCLE, BENEVOLENT AND TOLERANT" "TAKEN FOR GRANTED" "PERTAINING TO RIOTOUS OR DRUNKEN FESTIVITY; PERTAINING TO REVELRY" "COMMONPLACE; TRITE" "PLAYFUL CONVERSATION" "POET" "OBSCENE" "TO SANCTIFY; TO BLESS; TO ASCRIBE A VIRTUE TO" "TO DRESS IN A VULGAR; SHOWY MANNER" "HUGE CREATURE; ANYTHING VERY LARGE AND POWERFUL" "TO CONTRADICT; MISREPRESENT; GIVE A FALSE IMPRESSION" "KINDLY; DOING GOOD" "TO DIVIDE INTO TWO PARTS" "N. FLATTERY, V. TO COAX WITH FLATTERY (BLANDISH)" "BORED BECAUSE OF FREQUENT INDULGENCE; UNCONCERNED" "TO GIVE A BOOST TO; PROP UP; SUPPORT" "POMPOUS; USING INFLATED LANGUAGE" "RUDE; INSENSITIVE" "COW-LIKE" "BOLD; SHAMELESS" "TO MENTION FOR THE FIRST TIME" "CHARACTERISTIC OF THE COUNTRYSIDE; RUSTIC; PASTORAL" "TO FLOURISH" "TO POLISH" "TO REINFORCE; SUPPORT" "UNPLEASANT OR HARSH-SOUNDING" "TO BEG; SPONGE" "THICK-SKINNED; INSENSITIVE" "FALSE AND MALICIOUS ACCUSATION; SLANDER" "FALSE, DELIBERATELY MISLEADING STORY" "AN ESTABLISHED PRINCIPLE; A BASIS OR STANDARD FOR JUDGEMENT; A GROUP OF LITERARY WORKS" "INSINCERE TALK; LANGUAGE OF A PARTICULAR GROUP" "IRRITABLE; ILL-HUMOURED" "ADJ. FICKLE, N. INCLINATION TO CHANGE ONE'S MIND COMPULSIVELY" "FAULT-FINDING; INTENDED TO ENTRAP, AS IN AN ARGUMENT" "OF FOREMOST IMPORTANCE" "OF THE FLESH OR BODY; RELATED TO PHYSICAL APPETITES" "TO FIND FAULT; COMPLAIN" "SCIENCE OF MAKING MAPS" "ANY OF THE HEREDITARY SOCIAL CLASSES OF HINDU SOCIETY; SOCIAL STRATIFICATION" "PUNISHMENT; CHASTISEMENT; CRITICISM" "A VIOLENT UPHEAVAL THAT CAUSES GREAT DESTRUCTION AND CHANGE" "SOMETHING CAUSING CHANGE" "ABSOLUTE; WITHOUT EXCEPTION" "SMALLER GROUP WITHIN AN ORGANIZATION" "INVOLVING A CAUSE" "SARCASTICALLY BITING; BURNING" "CONCERNING THE SKY OR HEAVENS; SUBLIME" "MOVING AWAY FROM A CENTRE" "MOVING OR DIRECTED TOWARD A CENTRE" "TO DEFEND OR SUPPORT" "TO CORRECT BY PUNISHMENT OR REPROOF; TO RESTRAIN OR SUBDUE" "TRICKERY; FRAUD" "THE QUALITIES IDEALIZED BY KNIGHTHOOD SUCH AS BRAVERY AND GALLANTRY TOWARD WOMEN" "RUDE; BOORISH" "ROUNDABOUT" "ONE WHO CAN PREDICT THE FUTURE; PSYCHIC" "NOISY OUTCRY" "A SMALL, EXCLUSIVE GROUP" "THICKEN; CONGEAL" "V. TO CONFINE; SECLUDE, N. MONASTERY OR CONVENT, ADJ. SHUT AWAY FROM THE WORLD (CLOISTERED)" "TO CAUSE TO BECOME ONE" "CONCLUDING PART OF A LITERARY OR MUSICAL COMPOSITION; SOMETHING THAT SUMMARIZES OR CONCLUDES" "SYSTEMATIZE" "INFORMED; CONSCIOUS; AWARE" "ARTISTIC COMPOSITION OF MATERIALS PASTED OVER A SURFACE; AN ASSEMBLAGE OF DIVERSE ELEMENTS" "PROPORTIONAL" "BRIEF, COMPREHENSIVE SUMMARY" "SELF-SATISFIED" "OVERLY POLITE; WILLING TO PLEASE; OBLIGING" "SOMETHING THAT COMPLETES OR MAKES UP A WHOLE" "YIELDING" "UNEASINESS CAUSED BY GUILT" "CURVING INWARD" "OVERCOMING DISTRUST OR HOSTILITY" "INVENT" "EXISTING CONCURRENTLY" "TO OVERLOOK VOLUNTARILY; FORGIVE" "TO BAFFLE; PERPLEX; MIX UP" "SIMILAR IN TASTES AND HABITS; FRIENDLY; SUITED TO" "PERTAINING TO MARRIAGE AGREEMENT" "A PERSON POSSESSING EXPERT KNOWLEDGE OR TRAINING; A PERSON OF INFORMED AND DISCRIMINATING TASTE" "N. PERSON COMPULSORILY ENROLLED FOR MILITARY SERVICE, V. TO ENROL A PERSON FOR MILITARY SERVICE" "TO DECLARE SACRED" "V. TO ASSERT, N. AN ASSERTION (CONTENTION)" "QUARRELSOME; CAUSING QUARRELS" "SELF-CONTROL; ABSTENTION FROM SEXUAL ACTIVITY" "VERY SORROWFUL FOR A WRONG" "DISOBEDIENT; REBELLIOUS" "RIDDLE; PUZZLE WITH NO SOLUTION" "TOUCHING, NEIGHBOURING; CONNECTING WITHOUT A BREAK" "N. PRACTICE WIDELY OBSERVED IN A GROUP; CUSTOM; ACCEPTED TECHNIQUE OR DEVICE, ADJ. CUSTOMARY OR COMMONPLACE (CONVENTIONAL)" "TO APPROACH; COME TOGETHER; TEND TO MEET" "CURVED OUTWARD" "SOCIABLE" "TWISTED; COMPLICATED" "ABUNDANT; PLENTIFUL" "WOMAN WHO FLIRTS" "HORN OVERFLOWING WITH FRUIT AND GRAIN; STATE OF ABUNDANCE" "STUDY OF THE UNIVERSE AS A TOTALITY;THEORY OF THE ORIGIN AND STRUCTURE OF THE UNIVERSE" "HIDDEN; SECRET" "DESIRING SOMETHING OWNED BY ANOTHER" "TO MISLEAD BY TRICK OR FRAUD; DECEIVE" "COWARDLY" "ACCEPTANCE OF SOMETHING AS TRUE" "STATEMENT OF BELIEF OR PRINCIPLE; CREED" "TO DISCOURAGE; INTIMIDATE; DISHEARTEN" "SCARCITY" "CORRUPTION" "PROPER BEHAVIOUR" "TO MALIGN; HARM SOMEONE'S REPUTATION" "TO FAIL TO ACT" "RESPECT; REGARD FOR ANOTHER'S WISH" "NO LONGER EXISTING" "TO REPRESENT OR DEPICT" "RELATED TO POPULATION BALANCE" "PERTAINING TO PEOPLE" "TO EXPRESS DOUBT" "TO SLUR SOMEONE'S REPUTATION" "AN INHABITANT; A REGULAR VISITOR" "OUTCOME; UNRAVELLING OF THE PLOT OF A PLAY OR WORK OF LITERATURE" "TO MOCK" "SOMETHING DERIVED; UNORIGINAL" "TO DRY COMPLETELY" "STATE OF DISUSE" "RANDOM; DISCONNECTED; RAMBLING" "SOMETHING THAT DISCOURAGES OR HINDERS" "THE ACT OF TAKING AWAY; DEROGATORY COMMENT ON A PERSON'S CHARACTER" "TRANSPARENT; FINE-TEXTURED; INSUBSTANTIAL; VAGUE" "BITTER VERBAL ATTACK" "DIVISION INTO TWO USUALLY CONTRADICTORY PARTS" "SHYNESS; LACK OF CONFIDENCE" "V. TO SPREAD OUT, ADJ. WORDY; RAMBLING; SPREAD OUT" "ACT OF STRAYING FROM THE MAIN POINT" "FUNERAL HYMN" "TO FREE FROM MISCONCEPTION" "PERCEPTIVE; EXHIBITING KEEN INSIGHT AND GOOD JUDGEMENT" "TO MAKE UNEASY; DISCONCERT" "NOT IN TUNE" "TO DISHONOUR; DISGRACE; CAUSE TO BE DOUBTED" "DIFFERENCE BETWEEN" "CONSTITUTING A SEPARATE THING; DISTINCT" "QUALITY OF SHOWING SELF-RESTRAINT IN SPEECH OR ACTIONS; CIRCUMSPECTION; FREEDOM TO ACT ON ONE'S OWN" "NOT CANDID; CRAFTY" "UNPREJUDICED; OBJECTION" "LACKING ORDER OR COHERENCE; DISLOCATED" "PUT AWAY FROM CONSIDERATION; REJECT" "TO BELITTLE" "DISSIMILAR" "TO PRETEND; DISGUISE ONE'S MOTIVES" "TO SPREAD; SCATTER; DISPERSE" "PERSON WHO DISAGREES ABOUT BELIEF, ETC." "DISINTEGRATION; DEBAUCHERY" "DISCORD; LACK OF HARMONY" "TO EXPAND; SWELL OUT" "EXTRACT THE ESSENTIAL ELEMENTS" "INATTENTIVE; PREOCCUPIED" "TO VARY; GO IN DIFFERENT DIRECTIONS FROM THE SAME POINT" "TO STRIP; DEPRIVE; RID" "TO MAKE KNOWN SOMETHING THAT IS SECRET" "RELATING TO A PERSON WHO CANNOT COMPROMISE ABOUT POINTS OF A THEORY OR DOCTRINE; DOGMATIC; UNYIELDING" "TO PROVIDE WITH WRITTEN EVIDENCE TO SUPPORT" "POOR VERSE" "STATING OPINIONS WITHOUT PROOF" "INACTIVE" "WASTE; WORTHLESS MATTER; TRIVIAL MATTER" "TO DECEIVE; TRICK" "EXHILARATED; ENTHUSIASTIC" "SELECTING FROM VARIOUS SOURCES" "STATE OF HIGH SPIRITS OR LIVELINESS; THE PROCESS OF BUBBLING AS GAS ESCAPES" "DEPLETED OF VITALITY; OVERREFINED; DECADENT" "EFFICIENCY; EFFECTIVENESS" "SHAMELESS BOLDNESS; PRESUMPTUOUSNESS" "THE TENDENCY TO SEE THING IN RELATION TO ONESELF; SELF-CENTRED" "EXCESSIVELY SELF-CENTRED; CONCEITED" "POEM OR SONG EXPRESSING LAMENTATION" "TO PROVOKE; DRAW OUT" "A SUBSTANCE BELIEVED TO HAVE THE POWER TO CURE ILLS" "BLISSFUL; DELIGHTFUL" "THIN AND WASTED" "TO ADORN; DECORATE; ENHANCE; MAKE MORE ATTRACTIVE BY ADDING DETAILS" "ADJ. SOOTHING; MOLLIFYING, N. AN AGENT THAT SOOTHES OR MAKES MORE ACCEPTABLE" "DERIVED OBSERVATION AND EXPERIMENT" "TO IMITATE; COPY" "A FORMAL EXPRESSION OF PRAISE" "INHERENT; BELONGING TO AN AREA" "TO WEAKEN" "TO CAUSE; PRODUCE" "TO INCREASE; IMPROVE" "THE SCIENTIFIC STUDY OF INSECTS" "TO PRONOUNCE CLEARLY" "SHORT-LIVED; FLEETING" "BRANCH OF PHILOSOPHY THAT EXAMINES THE NATURE OF KNOWLEDGE" "STEADY; UNVARYING; SERENE" "COMPOSURE; CALMNESS" "TO INTENTIONALLY USE VAGUE LANGUAGE" "MISTAKEN; STRAYING FROM THE PROPER COURSE" "LEARNED; SCHOLARLY" "HARD TO UNDERSTAND; KNOWN ONLY TO A FEW" "TO MAKE AN ATTEMPT; SUBJECT TO A TEST" "ADMIRABLE; POSSIBLE TO ESTIMATE" "BASED ON THE ATTITUDE THAT ONE'S GROUP IS SUPERIOR" "CAUSES OR ORIGINS" "ORIGIN AND HISTORY OF A WORD" "STUDY OF FACTORS THAT INFLUENCE THE HEREDITARY QUALITIES OF THE HUMAN RACE AND WAYS TO IMPROVE THESE QUALITIES" "HIGH PRAISE, ESPECIALLY OF A PERSON WHO HAS RECENTLY DIED" "USE OF AGREEABLE OR INOFFENSIVE LANGUAGE IN PLACE OF UNPLEASANT OR OFFENSIVE LANGUAGE" "A FEELING OF EXTREME HAPPINESS" "MERCY KILLING" "TO SHOW PLAINLY; BE AN INDICATION OF" "TENDING TO CALL TO MIND OR PRODUCE A REACTION" "TO AGGRAVATE; MAKE WORSE" "V. TO FORCE THE PAYMENT OF; DEMAND AND OBTAIN BY AUTHORITY, ADJ. EXTREMELY DEMANDING (EXACTING)" "TO CLEAR OF BLAME; VINDICATE" "DETESTABLE; ABHORRENT" "TO URGE BY STRONG APPEALS" "CRISIS; URGENT REQUIREMENTS" "HAVING TO DO WITH EXISTENCE; BASED ON EXPERIENCE; HAVING TO DO WITH THE PHILOSOPHY OF EXISTENTIALISM" "TO EXPEL EVIL SPIRITS; FREE FROM BAD INFLUENCES" "TO SPEAK OR WRITE AT LENGTH" "TO SEND INTO EXILE" "TO ATONE FOR" "TO EXPLAIN; INTERPRET; CLARIFY" "EXPLANATORY" "IN EXISTENCE; NOT LOST" "UNREHEARSED" "TO ROOT UP; TO DESTROY" "NOT ESSENTIAL" "THE ACT OF ESTIMATION BY PROJECTING KNOWN INFORMATION" "NOT INHERENT OR ESSENTIAL" "HUMOROUS" "TO MAKE LESS DIFFICULT" "A PERSON WHO DOES ALL SORTS OF WORK; A HANDYMAN" "BASED ON A FALSE IDEA OR FACT; MISLEADING" "PLOUGHED BUT NOT SOWED; UNCULTIVATED" "FOOLISHLY SELF-SATISFIED" "ANIMALS OF A PERIOD OR REGION" "SEEKING FAVOUR BY FLATTERY" "SUITABLY EXPRESSED; APPROPRIATE; WELL-CHOSEN" "EXISTING IN A WILD OR UNTAMED STATE" "N. WARMTH AND INTENSITY OF EMOTION, ADJ. FULL OF STRONG EMOTION OR IMPASSIONED (FERVENT)" "HAVING A BAD SMELL" "V. TO BIND; CONFINE, N. SOMETHING THAT RESTRICTS OR RESTRAINS" "ARBITRARY ORDER; AUTHORIZATION" "LOYALTY; EXACT CORRESPONDENCE" "USE OF OBSTRUCTIVE TACTICS IN A LEGISLATURE TO BLOCK PASSAGE OF A LAW" "TO HANDLE WITH A DECEPTIVE OR EVASIVE STRATEGY; TO USE FINESSE, THAT IS, REFINEMENT IN PERFORMANCE" "CREVICE" "TO DROOP; GROW WEAK" "BEGINNER; NOVICE" "PLANTS OF A REGION OR ERA" "RUDDY; REDDISH; FLOWERY" "N. AN EMBELLISHMENT OR ORNAMENTATION, V. MEANING TO GROW VIGOROUSLY, OR TO THRIVE" "TO TREAT SCORNFULLY" "FLOWING; A CONTINUOUS MOVING" "TO INCITE; AROUSE" "PATIENCE" "TO PREVENT; DELAY" "MENACING; THREATENING" "RENOUNCE; REPUDIATE" "TO SINK; FAIL; COLLAPSE" "A LOUD QUARREL; BRAWL" "QUARRELSOME; UNRULY; REBELLIOUS" "A PAINTING DONE ON PLASTER" "ORNAMENTAL BAND ON A WALL" "STUBBORNLY CONTRARY; OBSTINATELY DISOBEDIENT" "THRIFT" "TO ATTACK LOUDLY; DENOUNCE" "SO EXCESSIVE AS TO BE DISGUSTING" "UNION; SYNTHESIS" "INEFFECTIVE; USELESS; FRUITLESS" "TO DENY; DISPUTE; OPPOSE" "TO FROLIC; LEAP PLAYFULLY" "VERY TALKATIVE; WORDY" "COARSE AND UNCOUTH; CLUMSY" "CHEERFULNESS; KINDLINESS; SOCIABILITY" "TO DIVIDE AN AREA INTO VOTING DISTRICTS IN A WAY THAT FAVOURS A POLITICAL PARTY" "FLUENT IN AN INSINCERE WAY; OFFHAND" "TO PROD; URGE ON" "SHEER; LIGHT AND DELICATE, LIKE COBWEBS" "TO TEAR OUT; SCOOP OUT; OVERCHARGE" "POMPOUS; BOMBASTIC" "SOCIABLE" "TO COMPLAIN" "FREE OF CUNNING OR DECEIT; ARTLESS" "OUTWARD APPEARANCE; FALSE APPEARANCE; PRETENCE" "EASILY DECEIVED" "AFFECTING THE SENSE OF TASTE" "CALM AND PEACEFUL; HAPPY; GOLDEN; PROSPEROUS" "HOLY; SACRED" "LONG, POMPOUS SPEECH; TIRADE" "EXTREMELY DISTRESSING; TERRIFYING" "RELATING TO A HERBIVORE, AN ANIMAL THAT FEEDS MAINLY ON PLANTS" "TIGHTLY SEALED; MAGICAL" "UNORTHODOX; NOT WIDELY ACCEPTED" "A SYSTEM OF WRITING IN WHICH PICTORIAL SYMBOLS REPRESENT MEANING OR SOUNDS; WRITING OR SYMBOLS THAT ARE DIFFICULT TO DECIPHER; THE SYMBOLS USED IN ADVANCED MATHEMATICS" "COVERED WITH HAIR" "RELATING TO EXAGGERATED EMOTIONAL BEHAVIOUR CALCULATED FOR EFFECT; THEATRICAL ARTS OR PERFORMANCES" "AUTOMATIC MAINTENANCE BY AN ORGANISM OF NORMAL TEMPERATURE, CHEMICAL BALANCE, ETC. WITHIN ITSELF" "SERMON; TEDIOUS MORALIZING LECTURE; PLATITUDE" "COMPOSED OF IDENTICAL PARTS; UNIFORM IN COMPOSITION" "PURPOSEFUL EXAGGERATION FOR EFFECT" "ATTACKING CHERISHED TRADITION" "IDOL WORSHIP; BLIND OR EXCESSIVE DEVOTION" "PRODUCED BY FIRE; VOLCANIC" "COMPLICATED SITUATION; AN ENTANGLEMENT" "UNCHANGEABLE" "TO DAMAGE; INJURE" "SHOWING NO EMOTION" "POOR; HAVING NO MONEY" "TO HINDER; BLOCK" "IMPOSSIBLE TO PENETRATE" "NOT EASILY DISTURBED" "IMPOSSIBLE TO PENETRATE; INCAPABLE OF BEING AFFECTED" "TO STRIKE; ENCROACH" "INFLEXIBLE; INCAPABLE OF BEING PLEASED" "UNLIKELY; UNBELIEVABLE" "IMPLIED; UNDERSTOOD BUT NOT STATED" "COLLAPSE INWARD VIOLENTLY" "CURSE" "TO RELATE TO A PARTICULAR CAUSE OR SOURCE; ATTRIBUTE THE FAULT TO; ASSIGN AS A CHARACTERISTIC" "CARELESSLY; UNINTENTIONALLY" "HAVING BODILY FORM" "IMPERFECTLY FORMED OR FORMULATED" "STATE OF NOT FITTING" "INSIGNIFICANT; UNIMPORTANT" "INTRODUCE SOMETHING INTO ANOTHER THING ALREADY IN EXISTENCE; COMBINE" "SUDDEN INVASION" "UNCERTAIN; INDEFINITE" "POVERTY" "HABITUALLY LAZY; IDLE" "NOT TO BE AVOIDED OR ESCAPED; INEVITABLE" "UNABLE TO MOVE; SLUGGISH" "NAIVE AND TRUSTING; LACKING SOPHISTICATION" "FIRMLY ESTABLISHED BY NATURE OR HABIT" "HARMLESS" "UNCONSCIOUS; UNRESPONSIVE" "TO SUGGEST; SAY INDIRECTLY; IMPLY" "LACKING IN FLAVOUR; DULL" "INDIFFERENT; LACKING CONCERN OR CARE" "NARROW-MINDEDNESS; ISOLATION" "INSURMOUNTABLE; UNCONQUERABLE" "NOT MATERIAL" "TO FORBID; PROHIBIT; TO CONFRONT AND HALT THE ACTIVITIES, ADVANCE, OR ENTRY OF" "DEADLY TO BOTH SIDES" "TO INSERT; CHANGE BY ADDING NEW WORDS OR MATERIAL" "INTERVAL BETWEEN REIGNS; GAP IN CONTINUITY" "MARKED BY CLOSE ACQUAINTANCE" "NOT EASILY MANAGED" "STUBBORNNESS; REFUSAL TO COMPROMISE" "CONTEMPLATING ONE'S OWN THOUGHTS AND FEELINGS" "TO COVER WITH WATER; OVERWHELM" "HARDENED; ACCUSTOMED; USED TO" "VERBAL ABUSE" "TO DISAPPROVE; PROTEST VEHEMENTLY" "TO WIN OVER BY FLATTERY OR COAXING" "CONFIRMED; LONG-STANDING; DEEPLY ROOTED" "LIKELY TO PROVOKE ILL WILL; OFFENSIVE" "EASILY ANGERED" "UNSURE OF HOW TO ACT; WEAK" "WANDERING FROM PLACE TO PLACE; UNSETTLED" "ROUTE OF A TRAVELLER'S JOURNEY" "HAVING A YELLOWISH DISCOLOURATION OF THE SKIN; AFFECTED BY ENVY, RESENTMENT, OR HOSTILITY" "TO BE IN AGREEMENT" "FOND OF JOKING; JOCULAR; PLAYFUL" "HUGE FORCE DESTROYING EVERYTHING IN ITS PATH" "GROUP OF PEOPLE UNITED IN POLITIC INTRIGUE" "PLACE SIDE BY SIDE" "FAME; GLORY; HONOUR" "LIKELY TO CHANGE" "USING FEW WORDS" "TO THRASH VERBALLY OR PHYSICALLY" "LUSTFUL" "LETHARGY; SLUGGISHNESS" "PRESENT BUT HIDDEN; POTENTIAL" "TO PRAISE" "INACTIVE" "AN EMBANKMENT THAT PREVENTS A RIVER FROM OVERFLOWING" "LIGHT MANNER OR ATTITUDE" "TOLERANT; BROAD-MINDED; GENEROUS; LAVISH" "ONE WITHOUT MORAL RESTRAINT" "SEXUAL DESIRE" "EXTREMELY SMALL" "TO DRAW; DESCRIBE" "CLEAR; TRANSPARENT" "PERTAINING TO LANGUAGE" "LENGTHY RECITATION; REPETITIVE CHANT" "SCHOLARLY OR LEARNED PERSONS" "LEGAL PROCEEDINGS" "RECORD OF A VOYAGE; RECORD OF DAILY ACTIVITIES" "TALKATIVE" "BRIGHT; CLEAR; INTELLIGIBLE" "MONEY OR PROFITS" "BRIGHT; BRILLIANT; GLOWING" "SHINING" "CRAFTY; DOUBLE-DEALING" "PLOTS OR SCHEMES" "WHIRLPOOL; TURMOIL" "GENEROSITY; NOBILITY" "TO SPEAK EVIL OF" "TO FEIGN ILLNESS TO ESCAPE DUTY" "CAPABLE OF BEING SHAPED BY POUNDING; IMPRESSIONABLE" "DISSENTER" "DELUSIONS OF POWER OR IMPORTANCE" "A VARIETY OF ANIMALS KEPT TOGETHER" "DISHONEST" "BEGGAR" "GAUDY; PLAUSIBLE BUT FALSE; SPECIOUS" "TO HYPNOTIZE" "CHANGE; TRANSFORMATION" "A BRANCH OF PHILOSOPHY THAT INVESTIGATES THE ULTIMATE NATURE OF REALITY" "CONCERNED WITH THE WEATHER" "VERY CAREFUL; FASTIDIOUS" "COURAGE; ENDURANCE" "FULL OF COURAGE AND FORTITUDE; SPIRITED" "A SMALL SYSTEM HAVING ANALOGIES TO A LARGER SYSTEM; SMALL WORLD" "TO WORK AGAINST" "THREATENING; MENACING" "VERY SMALL" "PETTY DETAILS" "ONE WHO HATES HUMANITY" "MIXTURE OF WRITINGS ON VARIOUS SUBJECTS" "VILLAIN; CRIMINAL" "ONE WHO HATES WOMEN" "TO CAUSE TO BECOME LESS HARSH; SEVERE, OR PAINFUL; ALLEVIATE" "ADJ. RELATED TO MEMORY; ASSISTING MEMORY, N. A SYSTEM THAT DEVELOPS AND IMPROVES THE MEMORY" "LIMITED QUANTITY" "SOOTHE" "SOLID AND UNIFORM; CONSTITUTING A SINGLE, UNIFIED WHOLE" "ILL-HUMOURED; SULLEN" "MANY COLOURED; MADE UP OF MANY PARTS" "DIVERSE" "WORLDLY AS OPPOSED TO SPIRITUAL; CONCERNED WITH THE ORDINARY" "BLACK MAGIC" "TO CANCEL OUT; NULLIFY" "NEW WORD OR EXPRESSION" "NOVICE; BEGINNER" "A MEANS OF CONNECTION; A CONNECTED GROUP OR SERIES; A CENTRE" "BEWILDERED" "SENTIMENTAL LONGING FOR A PAST TIME" "MEDICINE OR REMEDY OF DOUBTFUL EFFECTIVENESS; SUPPOSED CURE" "TRIFLING; INVALID" "STUBBORN" "OVERLY SUBMISSIVE" "FUNERAL CEREMONIES" "TO MAKE UNNECESSARY; TO ANTICIPATE AND PREVENT" "TO SHUT; BLOCK" "RELATING TO PRACTICES CONNECTED WITH SUPERNATURAL PHENOMENA" "A LONG ADVENTUROUS VOYAGE; A QUEST" "TOO HELPFUL; MEDDLESOME" "CONCERNING THE SENSE OF SMELL" "FORM OF GOVERNMENT IN WHICH POWER BELONGS TO ONLY A FEW LEADERS" "BURDENSOME" "FORMATION OR USE OF WORDS THAT IMITATE SOUNDS OF THE ACTIONS THEY REFER TO" "DISGRACE; CONTEMPT" "SCIENTIST WHO STUDIES BIRDS" "TO MOVE BACK AND FORTH" "SHOWY; TRYING TO ATTRACT ATTENTION; PRETENTIOUS" "PRESUMPTUOUS; ARROGANT; OVERBEARING" "SONG OF JOY OR TRIUMPH; A FERVENT EXPRESSION OF JOY" "STUDY OF PAST GEOLOGICAL ERAS THROUGH FOSSIL REMAINS" "LACKING COLOUR OR LIVELINESS" "ELABORATE PRAISE; FORMAL HYMN OF PRAISE" "MODEL OF EXCELLENCE OR PERFECTION" "ONE-SIDED; COMMITTED TO A PARTY, GROUP. OR CAUSE; PREJUDICED" "DEPARTING FROM NORMAL CONDITION" "A REGIONAL DIALECT; NON-STANDARD SPEECH; JARGON" "SCARCITY" "SHOWING OFF LEARNING" "TRANSPARENT; TRANSLUCENT; EASILY UNDERSTOOD" "INCLINATION" "EXTREME POVERTY" "A WANDERING FROM PLACE TO PLACE" "IMPERATIVE; LEAVING NO CHOICE" "PRESENT THROUGHOUT THE YEARS; PERSISTENT" "FAITHLESS; DISLOYAL; UNTRUSTWORTHY" "SUPERFICIAL; NOT THOROUGH; PERFORMED REALLY AS A DUTY" "POINT IN AN ORBIT THAT IS CLOSEST TO THE EARTH" "PENETRABLE" "TO DISTURB GREATLY; MAKE UNEASY OR ANXIOUS; CAUSE A BODY TO DEVIATE FROM ITS REGULAR ORBIT" "SPREAD THROUGHOUT EVERY PART" "RUDE; PEEVISH" "CALM IN TEMPERAMENT; SLUGGISH" "MYTHICAL, IMMORTAL BIRD THAT LIVES FOR 500 YEARS, BURNS ITSELF TO DEATH, AND RISES FROM THE ASHES; ANYTHING THAT IS RESTORED AFTER SUFFERING GREAT DESTRUCTION" "FACIAL FEATURES" "DEVOUTNESS" "APPEALINGLY STIMULATING; PLEASANTLY PUNGENT; ATTRACTIVE" "N. FLEETING FEELING OF HURT PRIDE, V. TO PROVOKE OR AROUSE" "TO LESSEN ANOTHER'S ANGER; TO PACIFY" "CALM" "MELANCHOLY; MOURNFUL" "CONDITION OF BEING ABLE TO BE SHAPED OR FORMED; PLIABILITY" "STALE, OVERUSED EXPRESSION" "SPIRITUAL; WITHOUT SENSUAL DESIRE; THEORETICAL" "EXCESS; OVER-ABUNDANCE" "TO DETERMINE THE DEPTH; TO EXAMINE DEEPLY" "TO CONGRATULATE ONESELF IN A SELF-SATISFIED WAY" "TO FALL; PLUNGE" "SOCIETY RULED BY THE WEALTHY" "FULL OF HOLES; PERMEABLE TO LIQUIDS" "PERSON WHO AFFECTS AN ATTITUDE OR IDENTITY TO IMPRESS OTHERS" "PRACTICAL" "TO TALK IDLY; CHATTER" "MEANINGLESS, FOOLISH TALK" "PRELIMINARY STATEMENT" "UNCERTAIN" "PRINCIPLE; LAW" "V. TO CAUSE TO HAPPEN; THROW DOWN FROM A HEIGHT, ADJ. RASH; HASTY SUDDEN" "FORERUNNER; PREDECESSOR" "TO SUPERSEDE; APPROPRIATE FOR ONESELF" "CAPABLE OF GRASPING" "FOREWARNING; PRESENTIMENT" "TO FORETELL; INDICATE IN ADVANCE" "RUDE; IMPROPERLY BOLD" "BEYOND THE NORMAL COURSE OF NATURE; SUPERNATURAL" "TO QUIBBLE; EVADE THE TRUTH" "ORIGINAL; EXISTING FROM THE BEGINNING" "UNTOUCHED; UNCORRUPTED" "HONESTY; HIGH-MINDEDNESS" "POSING A PROBLEM; DOUBTFUL; UNSETTLED" "WASTEFUL; EXTRAVAGANT; LAVISH" "DEEP; NOT SUPERFICIAL" "SO HIGH AS TO PREVENT THE PURCHASE OR USE OF; PREVENTING; FORBIDDING" "TO INCREASE RAPIDLY" "TO WIN OVER; APPEASE" "INCLINATION; TENDENCY" "CORRECT CONDUCT; FITNESS" "V. TO CONDEMN; FORBID OUTLAW, ADJ. RELATING TO PROHIBITION" "PROVIDING FOR FUTURE NEEDS; FRUGAL" "POWERFUL" "CAREFUL IN OBSERVING RULES OF BEHAVIOUR OR CEREMONY" "STRONG OR SHARP IN SMELL OR TASTE; PENETRATING; CAUSTIC; TO THE POINT" "V. TO PROFESS; SUPPOSE; CLAIM, N. MEANING INTENDED OR IMPLIED" "COWARDLY" "MARSH; DIFFICULT SITUATION" "TO COWER; LOSE HEART" "LIMITED; RESTRICTED" "SUDDEN FEELING OF FAINTNESS OR NAUSEA; UNEASY FEELING ABOUT THE RIGHTNESS OF ACTIONS" "TO QUESTION" "TO ARGUE OVER INSIGNIFICANT AND IRRELEVANT DETAILS" "INACTIVE; STILL" "NUMBER OF MEMBERS NECESSARY TO CONDUCT A MEETING" "WITTY, SKILFUL STORYTELLER" "TO SCOLD WITH BITTER OR ABUSIVE LANGUAGE" "CLOTHING" "IMPLICATION; OUTGROWTH; CONSEQUENCE" "REFINED" "FUNDAMENTAL REASON" "PUZZLE IN WHICH PICTURES OR SYMBOLS REPRESENT WORDS" "RESISTING AUTHORITY OR CONTROL" "TO RETRACT A STATEMENT OR OPINION" "PERSON WHO LIVES IN SECLUSION AND OFTEN IN SOLITUDE" "ABSTRUSE; PROFOUND" "FORMIDABLE; AROUSING FEAR; WORTHY OF RESPECT" "STUBBORN; UNMANAGEABLE; RESISTING ORDINARY METHODS OF TREATMENT" "DEFLECT LIGHT OR SOUND" "BRIGHTLY SHINING; RESPLENDENT" "TO CONTRADICT; DISAPPROVE" "ENTERTAIN" "TO CONSIGN TO AN INFERIOR POSITION" "TO OBJECT OR PROTEST" "TO GO BACK ON ONE'S WORD" "AMENDS; COMPENSATION" "FRET; COMPLAIN" "REPETITION, ESPECIALLY OF A PIECE OF MUSIC" "TO FIND FAULT WITH; BLAME" "MORALLY UNPRINCIPLED PERSON" "TO REJECT AS HAVING NO AUTHORITY" "TO CANCEL" "DETERMINATION; RESOLVE" "DETERMINATION; FIRMNESS OF PURPOSE" "NOT SPEAKING FREELY; RESERVED; RELUCTANT" "EXPRESSING DEEP RESPECT; WORSHIPFUL" "RETALIATORY ACTION OR RETORT" "EXCESSIVELY ORNATE; HIGHLY DECORATED; STYLE OF ARCHITECTURE IN EIGHTEENTH CENTURY EUROPE" "TITLE OR HEADING; CATEGORY; ESTABLISHED MODE OF PROCEDURE OR CONDUCT; PROTOCOL" "TO REGRET" "TRICK; CRAFTY STRATAGEM; SUBTERFUGE" "WISE" "LASCIVIOUS; LUSTFUL" "HEALTHFUL" "EXPECTING AN IMPROVEMENT; FAVOURABLE TO HEALTH" "V. TO APPROVE; RATIFY; PERMIT, N. APPROVAL; RATIFICATION; PERMISSION; PENALIZE" "CYNICAL; SCORNFULLY MOCKING" "PERTAINING TO TAILORS" "TO SATISFY" "TO SOAK THOROUGHLY; IMBUE THROUGHOUT" "GLOOMY" "A CREATURE THAT IS HALF-MAN, HALF-BEAST WITH THE HORNS AND LEGS OF A GOAT; IT IS A FOLLOWER OF DIONYSUS; A LECHER" "TO ENJOY; HAVE A DISTINCTIVE FLAVOUR OR SMELL" "RELATING TO OR IN THE FORM OF AN OUTLINE OR DIAGRAM" "PRODUCE AND RELEASE SUBSTANCE INTO AN ORGANISM" "BEHAVIOUR PROMPTING REBELLION" "DILIGENT" "RELATING TO EARTHQUAKES; EARTHSHAKING" "RELATING TO THE SENSES; GRATIFYING THE PHYSICAL SENSES, ESPECIALLY SEXUAL APPETITES" "RELATING TO THE SENSES; OPERATING THROUGH THE SENSES" "AWARE; CONSCIOUS; ABLE TO PERCEIVE" "SUBMISSIVE; OBEDIENT" "NAVIGATION TOOL THAT DETERMINES LATITUDE AND LONGITUDE" "A PIECE OF BROKEN GLASS OR POTTERY" "RELATING TO THE STARS" "APELIKE; RELATING TO APES" "COMPARISON OF ONE THING WITH ANOTHER USING 'LIKE' OR 'AS'" "WELL-PAYING JOB OR OFFICE THAT REQUIRES LITTLE OR NO WORK" "UNIQUE; EXTRAORDINARY; ODD" "WINDING; INTRICATE; COMPLEX" "ONE WHO DOUBTS" "SERIOUSNESS" "THOROUGHLY SOAKED; SATURATED" "CONCERNED; ATTENTIVE; EAGER" "LITERARY OR DRAMATIC SPEECH BY ONE CHARACTER, NOT ADDRESSED TO OTHERS" "ABLE TO MEET FINANCIAL OBLIGATION" "RELATING TO OR AFFECTING THE BODY; CORPOREAL" "SLEEP PRODUCING" "FILTHY; CONTEMPTIBLE AND CORRUPT" "SEEMING TO BE LOGICAL AND SOUND, BUT NOT REALLY SO" "BAND OF COLOURS PRODUCED WHEN SUNLIGHT PASSES THROUGH A PRISM; A BROAD RANGE OF RELATED IDEAS OR OBJECTS" "N. PERSON WHO SPENDS MONEY RECKLESSLY, ADJ. WASTEFUL AND EXTRAVAGANT" "IRREGULAR" "FILTHY, WRETCHED CONDITION" "MARKED BY ABRUPT, CLEAR-CUT SOUNDS" "TO STOP OR CHECK THE FLOW OF" "EXTREMELY LOUD" "MARK OF DISGRACE OR INFERIORITY" "V. TO BE SPARING, N. A PERIOD OF TIME SPENT DOING SOMETHING" "TO SPECIFY AS AN ESSENTIAL CONDITION" "HAVING OR SHOWING LITTLE EMOTION" "ARRANGED IN LAYERS" "MARKED WITH THIN, NARROW GROOVES OR CHANNELS" "SOMETHING THAT RESTRAINS; NEGATIVE CRITICISM" "LOUD; HARSH; UNPLEASANTLY NOISY" "TO SWAGGER; DISPLAY TO IMPRESS OTHERS" "TO IMPAIR OR REDUCE TO USELESSNESS" "TO DULL THE SENSES OF; STUN; ASTONISH" "DARK AND GLOOMY; HELLISH" "NOTICE ORDERING SOMEONE TO APPEAR IN COURT" "TO SETTLE DOWN; GROW QUIET" "TO SUPPORT WITH PROOF OR EVIDENCE" "ESSENTIAL; PERTAINING TO THE SUBSTANCE" "TO INCLUDE; INCORPORATE" "INTENDED TO UNDERMINE OR OVERTHROW, ESPECIALLY AN ESTABLISHED GOVERNMENT" "RELIEF; HELP IN TIME OF DISTRESS OR WANT" "THE RIGHT TO VOTE" "VARIOUS" "TO REPLACE, ESPECIALLY TO DISPLACE AS INFERIOR OR ANTIQUATED" "LYING ON THE BACK; MARKED BY LETHARGY" "TO REPLACE; SUBSTITUTE" "BESEECHING" "ONE WHO ASKS HUMBLY AND EARNESTLY" "THE ACT OF ASSUMING TO BE TRUE OR REAL" "A FORM OF DEDUCTIVE REASONING THAT HAS A MAJOR PREMISE, A MINOR PREMISE, AND A CONCLUSION" "RELATED TO THE WOODS OR FOREST" "SILENTLY UNDERSTOOD; IMPLIED" "CHARM TO BRING GOOD LUCK AND AVERT MISFORTUNE" "PERIPHERAL; DIGRESSING" "UNNECESSARY REPETITION" "SCIENCE OF CLASSIFICATION; IN BIOLOGY, THE PROCESS OF CLASSIFYING ORGANISMS IN CATEGORIES" "BELIEF; DOCTRINE" "WEAK; INSUBSTANTIAL" "EARTHLY; COMMONPLACE" "GOVERNMENT BY PRIESTS REPRESENTING A GOD" "AN ACTOR OR ACTRESS" "THE CHARACTERISTIC QUALITY OF SOUND PRODUCED BY A PARTICULAR INSTRUMENT OR VOICE; TONE COLOUR" "LONG, VIOLENT SPEECH; VERBAL ASSAULT" "FLATTERER; HANGER-ON; YES-MAN" "BOOK, USUALLY LARGE AND ACADEMIC" "LETHARGY; DORMANCY; SLUGGISHNESS" "A TURNING OR TWISTING FORCE; THE MOMENT OF A FORCE; THE MEASURE OF A FORCE'S TENDENCY TO PRODUCE TWISTING OR TURNING AND ROTATION AROUND AN AXIS" "HAVING MANY TWISTS AND TURNS; HIGHLY COMPLEX" "TO PROMOTE OR PRAISE ENERGETICALLY" "OBEDIENT; YIELDING" "ACT OF TRESPASSING OR VIOLATING A LAW OR RULE" "TEMPORARY; SHORT-LIVED; FLEETING" "PARTIALLY TRANSPARENT" "N. WORK, ESPECIALLY ARDUOUS WORK; TRIBULATION; ANGUISH, V. TO WORK STRENUOUSLY" "PARODY; EXAGGERATED IMITATION; CARICATURE" "ARTICLE TREATING A SUBJECT SYSTEMATICALLY AND THOROUGHLY" "TREMBLING; QUIVERING; FRUGAL; TIMID" "FEAR AND ANXIETY" "AGGRESSIVENESS; FEROCITY" "AGREEMENT BETWEEN LOVERS TO MEET; RENDEZVOUS" "A SOCIAL CONDITION MARKED BY A BREAKDOWN OF SOCIAL NORMS" "SWOLLEN; DISTENDED" "MUDDY; OPAQUE; IN A STATE OF GREAT CONFUSION" "SWOLLEN; BLOATED; POMPOUS" "SERVING AS A GUARDIAN OR PROTECTOR" "MYSTERIOUS; STRANGE" "MOVING IN WAVES" "NOT FALSE; NOT MADE UP; GENUINE" "INDEFENSIBLE" "NOT FAVOURABLE; TROUBLESOME; ADVERSE; UNRULY" "PRACTICE OF LENDING MONEY AT EXORBITANT RATES" "TO WAVER; OSCILLATE" "EMPTY; VOID; LACKING INTELLIGENCE; PURPOSELESS" "PERTAINING TO A FAREWELL" "TASTELESS; DULL" "VARIED; MARKED WITH DIFFERENT COLOURS" "TO BOAST; BRAG" "BRIBABLE; MERCENARY; CORRUPTIBLE" "PROLONGED FEUD MARKED BY BITTER HOSTILITY" "V. TO ADORE; HONOUR; RESPECT, ADJ. RESPECTED BECAUSE OF AGE, CHARACTER, OR POSITION" "TRUTHFUL; ACCURATE" "WORDY" "DIZZINESS" "IRRITATION; ANNOYANCE; CONFUSION; PUZZLEMENT" "PRACTICABLE; CAPABLE OF DEVELOPING" "SPITEFUL; VENGEFUL; UNFORGIVING" "SOMEONE WITH MASTERLY SKILLS; EXPERT MUSICIAN" "COUNTENANCE; APPEARANCE; ASPECT" "THICK, SYRUPY, AND STICKY" "TO IMPAIR THE QUALITY OF; CORRUPT MORALLY; MAKE INOPERATIVE" "USING OR CONTAINING HARSH, ABUSIVE CENSURE" "DISSECTION; SURGERY; OR PAINFUL EXPERIMENTS PERFORMED ON A LIVING ANIMAL FOR THE PURPOSE OF SCIENTIFIC RESEARCH" "PREVAILING FASHION OR PRACTICE" "TENDING TO VARY FREQUENTLY; FICKLE" "WHIRLPOOL; WHIRLWIND; CENTRE OF TURBULENCE" "ADJ. JUSTIFIED, V. TO ATTEST TO THE ACCURACY OR QUALITY; JUSTIFY; GRANT AUTHORIZATION" "CAREFUL; CAUTIOUS" "TO WALLOW OR ROLL; TOSS ABOUT; BE IN TURMOIL" "FANCIFUL; UNPREDICTABLE" "PLAYFUL OR FANCIFUL IDEA" "VAGUELY LONGING; SADLY THOUGHTFUL" "ONE WHO IS FANATICALLY DEVOTED TO A CAUSE" "FANATICISM" "N FACT, WHETHER BY RIGHT OR NOT; EXERCISING POWER WITHOUT BEING LEGALLY ESTABLISHED" "A PERSON WHOSE BEHAVIOUR DIFFERS FROM THE ACCEPTED STANDARDS OF SOCIETY" "TO SUBMIT TO THE WISHES OF ANOTHER DUE TO RESPECT OR RECOGNITION OF THE PERSON'S AUTHORITY OR KNOWLEDGE" "SPIRITUAL, WITHOUT SENSUAL DESIRE, OR THEORETICAL" "TO PERCEIVE SOMETHING OBSCURE" "THE APPLICATION OF BIOLOGICAL PRINCIPLES TO THE THE DESIGN OF ELECTRICAL OR ENGINEERING SYSTEMS" "RELATING TO A SPECULATIVE FORMULATION GUIDING THE INVESTIGATION OR SOLUTION OF A PROBLEM; EDUCATIONAL METHOD IN WHICH STUDENTS LEARN FROM THEIR OWN INVESTIGATIONS" "FAIR; JUST; IMPARTIAL" "DECEPTION OR TRICKERY" "ATTEMPTING TO EXPLAIN COMPLEX PHENOMENA BY SIMPLE PRINCIPLES" "DISINCLINATION TO ACTION OR CHANGE" "A QUALITY THAT CAUSES A FEELING OF PITY OR SORROW" "UNINSPIRED, BORING ACADEMIC" )
size=${#wordarray[@]}

rand=$(( ( RANDOM % size )  + 1 ))

printf "${wordarray[rand-1],,}\n    ${meaningarray[rand-1],,}\n"

exit 0
