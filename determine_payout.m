function payout = determine_payout(num_spaces_bet, bet_amount)
    % determine_payout takes input the # of spaces bet on and amount bet
    % returns the respective payout
    switch num_spaces_bet
        % straight bet (35 to 1 payout)
        case 1
            payout = bet_amount * 35;
        % split bet (17 to 1 payout)
        case 2
            payout = bet_amount * 17;
        % street bet (11 to 1 payout)
        case 3
            payout = bet_amount * 11;
        % corner bet and four bet (8 to 1 payout)
        case 4
            payout = bet_amount * 8;
        % five bet (6 to 1 payout)
        case 5
            payout = bet_amount * 6;
        % dozen and column bet (2 to 1 payout)
        case 12
            payout = bet_amount * 2;
        % odd, even, black, red, low, high bet (1 to 1 payout)
        case 18
            payout = bet_amount;
        otherwise
            payout = 0;
            fprintf('Oops, something went wrong!');
    end
end