function vector = bet_column1 ( )
    % bet_column1 takes no input
    % returns a vector representing users' column1 bet
    column1 = 1:3:36;
    vector = zeros(1, 38);
    vector(column1) = 1;
end

