function a = createBet(bet)
    % createBet calls the appropriate function based on bet wanted
    % returns vector created by respective bet
    switch bet
        case 1
            a = bet_straightup();
        case 2
            a = bet_split();
        case 3
            a = bet_street();
        case 4
            a = bet_corner();
        case 5
            a = bet_black();
        case 6
            a = bet_red();
        case 7
            a = bet_even();
        case 8
            a = bet_odd();
        case 9
            a = bet_low();
        case 10
            a = bet_high();
        case 11
            a = bet_column1();
        case 12
            a = bet_column2();
        case 13
            a = bet_column3();
        case 14
            a = bet_dozen1();
        case 15
            a = bet_dozen2();
        case 16
            a = bet_dozen3();
        case 17
            a = bet_fourbet();
        case 18
            a = bet_fivebet();
    end
end