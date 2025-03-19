function vector = bet_low ( )
    % bet_low takes no input
    % returns a vector representing users' low bet
    low = 1:18;
    vector = zeros(1, 38);
    vector(low) = 1;
end

