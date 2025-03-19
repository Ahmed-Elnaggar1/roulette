function vector = bet_column2 ( )
    % bet_column2 takes no input
    % returns a vector representing users' column2 bet
    column2 = 2:3:36;
    vector = zeros(1, 38);
    vector(column2) = 1;
end

