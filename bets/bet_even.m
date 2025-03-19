function vector = bet_even ( )
    % bet_even takes no input
    % returns a vector representing users' even bet
    even = 2:2:36;
    vector = zeros(1, 38);
    vector(even) = 1;
end

