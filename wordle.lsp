; Screen Clear
(format t "~A[H~@*~A[J" #\escape)
(print (format t "


        O))        O))           O))))            O)))))))           O)))))           O))             O))))))))
        O))        O))         O))    O))         O))    O))         O))   O))        O))             O))      
        O))   O)   O))       O))        O))       O))    O))         O))    O))       O))             O))      
        O))  O))   O))       O))        O))       O) O))             O))    O))       O))             O))))))  
        O)) O) O)) O))       O))        O))       O))  O))           O))    O))       O))             O))      
        O) O)    O))))         O))     O))        O))    O))         O))   O))        O))             O))      
        O))        O))           O))))            O))      O))       O)))))           O))))))))       O))))))))
                                                                                                       
                                        Common Lisp Version by Ethan Roldan             

                                        * : Correct Letter Correct Position
                                        + : Correct Letter Incorrect Position
                                        - : Incorrect Letter                                                                              
                                        
                         If you find a bug please let me know so I can cry and then fix it 

"))

; Global Variables and Functions

(setf *random-state* (make-random-state t))
;; this randomizes the initial seed for the random gen because apparently lisp cant do that itself

(setf allWords (list
"BRIDE" "AUDIO" "CAPER" "WRITE" "PEACE" "CHOIR" "OCEAN" "WORDY" "VERVE" "SPICE" "BEACH" "QUEST" "MAGMA" "EXACT" "AMISS" "SCRUB" "INDEX" "SNAKY" "WRATH" "QUICK" "HELLO" "EMPTY" "LOVER" "BULLY" "BROOK" "POLYP" "ANODE" "CHART" "PARTY" "BEGET" "TENTH" "STYLE" "BATHE" "CURLY" "ETHOS" "DISCO" "HEART" "WHEEL" "HOBBY" "WHALE" "FROZE" "BURLY" "FLANK" "TONIC" "FLYER" "DROOP" "TOPAZ" "CRONE" "FIEND" "BARGE" "WHIRL" "EARTH" "FOLLY" "ENTER" "COWER" "DONUT" "WINDY" "VENOM" "IRATE" "HOTEL" "MOSSY" "BLEEP" "STRAW" "DINER" "TRACT" "DROOP" "GUEST" "RODEO" "GRAND" "COVET" "TASTE" "CRANE" "FROST" "KAZOO" "SHYLY" "RANCH" "STRAP" "MAYBE" "CRIME" "PLUNK" "WRONG" "GUARD" "AGAIN" "BALSA" "CRUMB" "HATER" "SCOUT" "ENNUI" "BEAST" "NANNY" "HUMID" "JAZZY" "AGILE" "KNEEL" "MOUSE" "SKIMP" "RAMEN" "SWINE" "BAGEL" "UTTER" "CLERK" "IGLOO" "BRASH" "FLASK" "GRIEF" "SHORN" "PLANK" "LATTE" "CANOE" "SCARF" "ACRID" "SNACK" "BROOM" "ETHIC" "COCOA" "AGLOW" "GHOUL" "ANGER" "BELOW" "GUPPY" "HORDE" "SULKY" "RANGE" "PLAZA" "CEDAR" "CIRCA" "LOGIC" "METRO" "JOKER" "DITTO" "UNZIP" "BROKE" "KAYAK" "PLATE" "THUMP" "HOUND" "WHIFF" "DWELT" "AGONY" "THIEF" "CARAT" "BORAX" "QUALM" "UNDER" "SNAFU" "LEDGE" "LOCUS" "LEAFY" "SMASH" "RATIO" "FLORA" "STOCK" "MARCH" "EVERY" "BREAD" "BESET" "HURRY" "GUANO" "UNTIE" "VOTER" "GROUT" "STAID" "DUVET" "TOUGH" "GLOVE" "CREDO" "YACHT" "MEALY" "CIDER" "SWEEP" "SURLY" "BLAME" "BIRTH" "EMAIL" "REVEL" "WHERE" "REGAL" "HORSE" "PINKY" "TOXIC" "TREND" "SQUAT" "ABOVE" "MOOSE" "POLKA" "WORSE" "SYRUP" "FIFTY" "ARBOR" "VAGUE" "RIPER" "RUDDY" "SWEAT" "KIOSK" "AVAIL" "CACHE" "MAGIC" "SALSA" "SOUND" "USAGE" "GIANT" "DEBUG" "HEADY" "STAGE" "FLAIL" "APPLE" "NINTH" "DANCE" "UNLIT" "TASTY" "SHIRK" "SCOLD" "CROSS" "CRAVE" "FISHY" "FLIRT" "WORRY" "BEEFY" "MAIZE" "COUNT" "ELUDE" "MATEY" "BLURB" "ALTER" "MUCKY" "CHARD" "ADOPT" "FROCK" "SPIRE" "KOALA" "HUMAN" "LEAPT" "SEDAN" "GRIMY" "PIXIE" "OPERA" "LEMON" "BELIE" "SLEEK" "LAYER" "ANTIC" "SKIRT" "WHINE" "MANLY" "MOLAR" "HAVOC" "IMPEL" "CONDO" "JUDGE" "EXTRA" "POISE" "AORTA" "EXCEL" "LUNAR" "THIRD" "SLATE" "TAPER" "CHORD" "PROBE" "RIVAL" "USUAL" "SPOKE" "APPLY" "NAIVE" "KNOCK" "BRAID" "INFER" "JOUST" "AMBER" "WOKEN" "ADORE" "TORSO" "CHAFE" "EJECT" "STUDY" "UNDUE" "TEPID" "HAPPY" "CLEAN" "ITCHY" "FEAST" "DRIVE" "PRIME" "AXIOM" "BRAVE" "AVERT" "GLYPH" "THERE" "BAKER" "SNARL" "MAPLE" "INANE" "VALET" "MEDAL" "UNITE" "RAINY" "SPELL" "UNITE" "STALE" "DREAM" "PHOTO" "ALOUD" "INEPT" "PINEY" "APTLY" "WALTZ" "LIBEL" "SNEAK" "FLOUT" "FOGGY" "FAULT" "MUMMY" "SPIEL" "GROVE" "DENIM" "QUIRK" "EXIST" "STEIN" "SPADE" "CATCH" "FLOOR" "EQUAL" "IONIC" "VALID" "ENJOY" "HOWDY" "VIGOR" "DANDY" "SLOTH" "MARSH" "BOUGH" "STING" "TWINE" "LEAVE" "SCORN" "SCALD" "USURP" "SOGGY" "BRISK" "ADMIT" "GRATE" "GLORY" "SAINT" "RECAP" "ALIKE" "TRICE" "STICK" "CHUTE" "PARER" "DOUBT" "THYME" "ALPHA" "BOOZE" "TIBIA" "LOFTY" "THEME" "CLASS" "LEERY" "TAUNT" "WHOOP" "INTER" "GULLY" "CHARM" "FUNGI" "PRIZE" "ONSET" "CHIEF" "GAUZE" "RUDER" "IRONY" "CLOWN" "NEEDY" "WOVEN" "MERIT" "WASTE" "TREAT" "SHRUG" "TWANG" "TWICE" "GRUEL" "POKER" "KHAKI" "HUNKY" "LABEL" "GLEAN" "CLING" "PATTY" "UNFIT" "SMEAR" "ALIEN" "BUGGY" "RHYME" "YOUTH" "COYLY" "QUART" "CRAMP" "BLUFF" "UPSET" "STOMP" "MOTTO" "CINCH" "ELOPE" "POWER" "MIDGE" "TRYST" "APHID" "TRITE" "ANGRY" "FLOCK" "WACKY" "ROOMY" "WEDGE" "LIVER" "BLAND" "NIGHT" "MADAM" "BERTH" "STEAD" "VOICE" "AGAPE" "FLUFF" "FIELD" "SEVER" "LILAC" "EGRET" "PINTO" "HUTCH" "GAWKY" "DROLL" "RETRO" "RUSTY" "BEADY" "SMITE" "BRINK" "AWFUL" "GLOAT" "INPUT" "LOSER" "CACAO" "BLOWN" "APRON" "PRIMO" "ATONE" "DONOR" "FLOAT" "GOOSE" "PIETY" "GIRTH" "TRAIT" "FLOOD" "GLOOM" "DEPTH" "FROTH" "PHASE" "SHOWY" "CREAK" "MANOR" "ATOLL" "BAYOU" "CREPT" "TIARA" "VOUCH" "ALBUM" "HINGE" "MONEY" "SCRAP" "GAMER" "GLASS" "SCOUR" "DELVE" "YIELD" "TIPSY" "SLUNG" "FARCE" "FARCE" "GECKO" "SHINE" "CANNY" "MIDST" "BADGE" "HOMER" "TRAIN" "HAIRY" "STORY" "FORGO" "LARVA" "TRASH" "ZESTY" "SHOWN" "HEIST" "ASKEW" "INERT" "OLIVE" "PLANT" "OXIDE" "CARGO" "FOYER" "FLAIR" "AMPLE" "CHEEK" "SHAME" "MINCE" "CHUNK" "ROYAL" "SQUAD" "BLACK" "STAIR" "SCARE" "FORAY" "COMMA" "NATAL" "SHAWL" "FEWER" "TROPE" "SNOUT" "LOWLY" "STOVE" "SHALL" "FOUND" "NYMPH" "EPOXY" "DEPOT" "CHEST" "PURGE" "SLOSH" "THEIR" "RENEW" "ALLOW" "SAUTE" "MOVIE" "CATER" "TEASE" "SMELT" "FOCUS" "TODAY" "WATCH" "LAPSE" "MONTH" "SWEET" "HOARD" "CLOTH" "BRINE" "AHEAD" "MOURN" "NASTY" "RUPEE" "CHOKE" "CHANT" "SPILL" "VIVID" "BLOKE" "TROVE" "THORN" "OTHER" "TACIT" "SWILL" "DODGE" "SHAKE" "CAULK" "AROMA" "CYNIC" "ROBIN" "ULTRA" "ULCER" "PAUSE" "HUMOR" "FRAME" "ELDER" "SKILL" "ALOFT" "PLEAT" "SHARD" "MOIST" "THOSE" "LIGHT" "WRUNG" "COULD" "PERKY" "MOUNT" "WHACK" "SUGAR" "KNOLL" "CRIMP" "WINCE" "PRICK" "ROBOT" "POINT" "PROXY" "SHIRE" "SOLAR" "PANIC" "TANGY" "ABBEY" "FAVOR" "DRINK" "QUERY" "GORGE" "CRANK" "SLUMP" "BANAL" "TIGER" "SIEGE" "TRUSS" "BOOST" "REBUS" "UNIFY" "TROLL" "TAPIR" "ASIDE" "FERRY" "ACUTE" "PICKY" "WEARY" "GRIPE" "CRAZE" "PLUCK" "BRAKE" "BATON" "CHAMP" "PEACH" "USING" "TRACE" "VITAL" "SONIC" "MASSE" "CONIC" "VIRAL" "RHINO" "BREAK" "TRIAD" "EPOCH" "USHER" "EXULT" "GRIME" "CHEAT" "SOLVE" "BRING" "PROVE" "STORE" "TILDE" "CLOCK" "WROTE" "RETCH" "PERCH" "ROUGE" "RADIO" "SURER" "FINER" "VODKA" "HERON" "CHILL" "GAUDY" "PITHY" "SMART" "BADLY" "ROGUE" "GROUP" "FIXER" "GROIN" "DUCHY" "COAST" "BLURT" "PULPY" "ALTAR" "GREAT" "BRIAR" "CLICK" "GOUGE" "WORLD" "ERODE" "BOOZY" "DOZEN" "FLING" "GROWL" "ABYSS" "STEED" "ENEMA" "JAUNT" "COMET" "TWEED" "PILOT" "DUTCH" "BELCH" "OUGHT" "DOWRY" "THUMB" "HYPER" "HATCH" "ALONE" "MOTOR" "ABACK" "GUILD" "KEBAB" "SPEND" "FJORD" "ESSAY" "SPRAY" "SPICY" "AGATE" "SALAD" "BASIC" "MOULT" "CORNY" "FORGE" "CIVIC" "ISLET" "LABOR" "GAMMA" "LYING" "AUDIT" "ROUND" "LOOPY" "LUSTY" "GOLEM" "GONER" "GREET" "START" "LAPEL" "BIOME" "PARRY" "SHRUB" "FRONT" "WOOER" "TOTEM" "FLICK" "DELTA" "BLEED" "ARGUE" "SWIRL" "ERROR" "AGREE" "OFFAL" "FLUME" "CRASS" "PANEL" "STOUT" "BRIBE" "DRAIN" "YEARN" "PRINT" "SEEDY" "IVORY" "BELLY" "STAND" "FIRST" "FORTH" "BOOBY" "FLESH" "UNMET" "LINEN" "MAXIM" "POUND" "MIMIC" "SPIKE" "CLUCK" "CRATE" "DIGIT" "REPAY" "SOWER" "CRAZY" "ADOBE" "OUTDO" "TRAWL" "WHELP" "UNFED" "PAPER" "STAFF" "CROAK" "HELIX" "FLOSS" "PRIDE" "BATTY" "REACT" "MARRY" "ABASE" "COLON" "STOOL" "CRUST" "FRESH" "DEATH" "MAJOR" "FEIGN" "ABATE" "BENCH" "QUIET" "GRADE" "STINK" "KARMA" "MODEL" "DWARF" "HEATH" "SERVE" "NAVAL" "EVADE" "FOCAL" "BLUSH" "AWAKE" "HUMPH" "SISSY" "REBUT" "CIGAR"
))

; This counts how many possible words there are
(setf numWords 0)
(loop for x in allWords 
    do(setf numWords (+ numWords 1)))

; This randomly selects one of the words to be the solution
(setf currWord "")
(defun setWord () 
    (setf tempWords allWords)
    (loop for x from 0 to (random (- numWords 1))
        do 
            (setf tempWords 
                (cdr tempWords)
            )
    )
    (setf currWord (car tempWords))
)

; Gameplay Time :D

; concatString is from stack overflow, concatinates a given list into a single string
(defun concatString (list)
  (if (listp list)
      (let ((result ""))
        (dolist (item list)
          (if (stringp item)
              (setq result (concatenate 'string result item))))
        result)))

; This variable stores the users guesses one at a time
(setf guess "")

; This function checks whether the user's guess is vaild or not
(defun enterGuess() 
    (setf hint (list "-" "-" "-" "-" "-"))

    (terpri)
    (print (concatString (list "Attempts: " (write-to-string attempts))))
    (print "Enter a guess: ")
    
    (setf guess (write-to-string (read)))

    (if (/= 5 (length guess))
        (print "Invalid Guess")
    )

    (if (= 5 (length guess))
        (checkGuess)
    )
)

; This function checks whether or not the user's guess is correct
; if not correct, this function will distrubute * and + based on the guess
; NOTE: there is a bug when the user submits a guess with repeat letters and there is one of the repeat letters in the answer, will fix eventually
(defun checkGuess()
    (setf attempts (- attempts 1))

    (setf currWordCopy (list "" "" "" "" ""))
    (setf guessCopy (list "" "" "" "" ""))
    (loop for x from 0 to 4 do
        (setf (nth x currWordCopy) (elt currWord x))
        (setf (nth x guessCopy) (elt guess x))
    )

    (loop for x from 0 to 4 do
        (loop for y from 0 to 4 do(
            if (equal (elt currWordCopy x) (elt guessCopy y))
                (progn
                    (setf (nth y hint) "+")
                    (setf (nth x currWordCopy) "!")
                    (setf (nth y guessCopy) "?")
                )
        ))
    )

    (loop for x from 0 to 4 do (
        if (equal (elt currWord x) (elt guess x))
            (progn
                (setf (nth x hint) "*")
                (setf (nth x currWordCopy) "!")
                (setf (nth x guessCopy) "?")
            )
    ))

    (print (string-upcase guess))
    (print (concatString hint))

    (if (equal (concatString hint) "*****")
        (win)
    )
)

; this is called once the user wins
(defun win()
    (print "YOU GOT IT!!!")
    (setf attempts -1)
)

; this keeps track of how many attempts the user has and the game will end once the user either wins or runs out of attempts

(defun startGame() 
    (setWord)
    (setf attempts 6)
    (loop while (> attempts 0) do(enterGuess))
    (if (= attempts 0) (print(concatString (list "The word was: " currWord))))
    (terpri)
    (print "Would you like to play again? (y/n)")
    (setf redo (write-to-string (read)))
    (print redo)
    (if (equal redo "Y")
        (startGame)
    )
)
(startGame)

; possible addition would be the ability to play again without loading the file again