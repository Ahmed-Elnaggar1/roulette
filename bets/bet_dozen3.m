function vector = bet_dozen3 ( )
    % bet_dozen3 takes no input
    % returns a vector representing users' dozen3 bet
    dozen3 = 25:36;
    vector = zeros(1, 38);
    vector(dozen3) = 1;
end
