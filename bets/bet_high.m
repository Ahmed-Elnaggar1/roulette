function vector = bet_high ( )
    % bet_high takes no input
    % returns a vector representing users' high bet
    high = 19:36;
    vector = zeros(1, 38);
    vector(high) = 1;
end

