function vector = bet_red ( )
    % bet_black takes no input
    % returns a vector representing users' black bet
    vector = zeros(1, 38);
    reds = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36];
    vector(reds) = 1;
end

