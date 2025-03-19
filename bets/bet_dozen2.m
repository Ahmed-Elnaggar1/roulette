function vector = bet_dozen2 ( )
    % bet_dozen2 takes no input
    % returns a vector representing users' dozen2 bet
    dozen2 = 13:24;
    vector = zeros(1, 38);
    vector(dozen2) = 1;
end
