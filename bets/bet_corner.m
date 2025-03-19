function vector = bet_corner ( )
    % bet_corner takes no input
    % returns a vector representing users' corner bet
    while (true)
        fprintf("e.g. to corner bet 1, 2, 4, 5, enter 1\n");
        spot = input("Enter the top-left spot of your corner bet: ");
        if (spot >= 1 && spot <= 32)
            break;
        end
        fprintf("Invalid bet\n");
    end
    vector = zeros(1, 38);
    vector(spot) = 1;
    vector(spot + 1) = 1;
    vector(spot + 3) = 1;
    vector(spot + 4) = 1;
end