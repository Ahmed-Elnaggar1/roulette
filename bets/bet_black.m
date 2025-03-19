function vector = bet_black ( )
    % bet_black takes no input
    % returns a vector representing users' black bet
    vector = zeros(1, 38);
    blacks = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35];
    vector(blacks) = 1;
end

