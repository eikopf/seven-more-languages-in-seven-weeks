(def story-elements
  [[:maybe-telegram-girl :telegram-girl
    "A singing telegram girl arrives."]
   [:maybe-motorist :motorist
    "A stranded motorist comes asking for help."]
   [:motorist :policeman
    "Investigating an abandoned car, a policeman appears."]
   [:motorist :dead-motorist
    "The motorist is found dead in the lounge, killed by a wrench."]
   [:telegram-girl :dead-telegram-girl
    "The telegram girl is murdered in the hall with a revolver."]
   [:policeman :dead-policeman
    "The policeman is killed in the library with a lead pipe."]
   [:dead-motorist :guilty-mustard
    "Colonel Mustard killed the motorist, his old driver during the war."]
   [:dead-motorist :guilty-scarlet
    "Miss Scarlet killed the motorist to keep her secrets safe."]
   [:dead-policeman :guilty-thomson
    "Judge Thomson killed the policeman, who had bungled an important case."]])

(db-rel ploto a b)

(def story-db
  (reduce (fn [dbase elems]
            (apply db-fact dbase ploto (take 2 elems)))
          (db)
          story-elements))

(def start-state
  [:maybe-telegram-girl :maybe-motorist
   :wadsworth :mr-boddy :cook :yvette])

(defn actiono [state new-state action]
  (fresh [in out temp]
         (membero in state) ;; "in" resource must be available in state
         (ploto in out) ;; with in, ploto consumes it and produces an out
         (remembero in state temp) ;; this removes in from the state
         (conso out temp new-state) ;; the new resource is added to state to produce the new state
         (== action [in out])))
