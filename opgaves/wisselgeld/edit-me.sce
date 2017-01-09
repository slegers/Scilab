function [aantal_muntstukken] = solve(te_betalen,betaald)
    // Reken uit hoeveel munten je minimaal moet teruggeven.
    
    // Dummy toekenningen aan outputvariabelen
    aantal_muntstukken = 0
    terugbetalen = betaald - te_betalen
    if te_betalen > betaald then
          error("You didn`t pay enough.")
    end
    while terugbetalen <> 0 then
        if terugbetalen >= 200 then
                aantal_muntstukken = aantal_muntstukken+ floor(terugbetalen/200)
                terugbetalen = terugbetalen - aantal_muntstukken * 200
        elseif terugbetalen >= 100 then
                aantal_muntstukken = aantal_muntstukken+ floor(terugbetalen/100)
                terugbetalen = terugbetalen - floor(terugbetalen/100) * 100
        elseif terugbetalen >= 50 then
                aantal_muntstukken = aantal_muntstukken+ floor(terugbetalen/50)
                terugbetalen = terugbetalen - floor(terugbetalen/50) * 50    
      elseif terugbetalen >= 20 then
                aantal_muntstukken = aantal_muntstukken+  floor(terugbetalen/20)
                terugbetalen = terugbetalen - floor(terugbetalen/20) * 20
      elseif terugbetalen >= 10 then
                aantal_muntstukken = aantal_muntstukken + floor(terugbetalen/10)
                terugbetalen = terugbetalen - floor(terugbetalen/10) * 10
      elseif terugbetalen >= 5 then
                aantal_muntstukken = aantal_muntstukken+ floor(terugbetalen/5)
                terugbetalen = terugbetalen - floor(terugbetalen/5) * 5
      elseif terugbetalen >= 2 then
                aantal_muntstukken = aantal_muntstukken+  floor(terugbetalen/2)
                terugbetalen = terugbetalen - floor(terugbetalen/2) * 2
      elseif terugbetalen >= 1 then
                aantal_muntstukken = aantal_muntstukken+ floor(terugbetalen/1)
                terugbetalen = terugbetalen - floor(terugbetalen/1) * 1
      end
    end
    
    
endfunction
