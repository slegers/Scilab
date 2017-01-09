function [prijs] = solve(pizzas,bonnen)
    prijs = sum(pizzas);
    
    if length(bonnen) == 0 then
        return;
    end
    
    pizzas = gsort(pizzas);
    lstPizzas = list();
    for i = 1:length(pizzas)
        lstPizzas($+1) = pizzas(i);
    end
    
    lstBonnen = list();
    for i = 1:size(bonnen,'r')
        lstBonnen($+1) = bonnen(i,:);
    end
    
    prijs = prijs - berekenKorting(lstPizzas, lstBonnen);
endfunction

//Versie 1 (klopt niet volgens scorebord)
//function [korting] = berekenKorting(lstPizzas, lstBonnen)
//    korting = 0;
//    
//    while (length(lstBonnen) > 0) & (length(lstPizzas) > 0)
//        bonIndex = kiesVolgendeBon(lstPizzas, lstBonnen);
//        if bonIndex == 0 then
//           break;
//        end
//        
//        bon = lstBonnen(bonIndex);
//        lstBonnen(bonIndex) = null();
//        
//        korting = korting + maxKortingMetBon(lstPizzas, bon);
//        
//        for i = 1:min(bon(1) + bon(2),length(lstPizzas))
//            lstPizzas(1) = null();
//        end
//    end
//endfunction

//Versie 2 
function [korting] = berekenKorting(lstPizzas, lstBonnen)
    korting = 0;
    if length(lstBonnen) == 0 then
        return;
    elseif length(lstPizzas) == 0 then
        return;
    end
    
    for i = 1:length(lstBonnen)
        tmpKorting = 0;
        tmpPizzas = lstPizzas;
        tmpBonnen = lstBonnen;
        
        if length(tmpPizzas) <= tmpBonnen(i)(1) then
            continue;
        elseif tmpBonnen(i)(2) == 0 then
            continue;
        end
        
        tmpKorting = maxKortingMetBon(tmpPizzas, tmpBonnen(i));
        if length(tmpPizzas) < (tmpBonnen(i)(1)) + (tmpBonnen(i)(2)) then
            tmpPizzas = list();
        else
            for j = 1:(tmpBonnen(i)(1)) + (tmpBonnen(i)(2))
                tmpPizzas(1) = null();
            end
        end
        
        tmpBonnen(i) = null();
        tmpKorting = tmpKorting + berekenKorting(tmpPizzas, tmpBonnen);
        
        if tmpKorting > korting then
            korting = tmpKorting;
        end
    end
endfunction

function [bon] = kiesVolgendeBon(lstPizzas, lstBonnen)
    maxRendement = 0;
    korting = 0;
    bon = 0;
    
    for i = 1:length(lstBonnen)
        if lstBonnen(i)(1) <= length(lstPizzas) then
            korting = maxKortingMetBon(lstPizzas, lstBonnen(i));
            if rendement(lstPizzas, lstBonnen(i), korting) > maxRendement then
                maxRendement = rendement(lstPizzas, lstBonnen(i), korting);
                bon = i;
                if maxRendement == %inf then
                    break;
                end
            end
        end
    end
endfunction

function [korting] = maxKortingMetBon(lstPizzas, bon)
    korting = 0;
    if length(lstPizzas) == bon(1) then
        return;
    elseif bon(2) == 0 then
        return;
    end
    
    if length(lstPizzas) < bon(1) + bon(2) then
        for i = 1 + bon(1):length(lstPizzas)
            korting = korting + lstPizzas(i);
        end
    else
        for i = 1 + bon(1):bon(1) + bon(2)
            korting = korting + lstPizzas(i);
        end
    end
endfunction

function [u] = rendement(lstPizzas, bon, korting)
    u = 0;
    prijs = korting;
    
    if bon(1) == 0 then
        u = %inf;
        return;
    end
    
    for i = 1:bon(1)
        prijs = prijs + lstPizzas(i);
    end
    
    u = korting / prijs;
endfunction
