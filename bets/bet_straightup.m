function vector = bet_straightup ( )
    % bet_straightup takes no input
    % returns a vector representing users' straightup bet
    while (true)
        fprintf("37 = 0 and 38 = 00\n");
        spot = input("Enter the number to bet on: ");
        if (spot >= 1 && spot <= 38)
            break;
        end
        fprintf("Invalid bet\n");
    end
    vector = zeros(1, 38);
    vector(spot) = 1;
end