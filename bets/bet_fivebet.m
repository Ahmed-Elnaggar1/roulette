function vector = bet_fivebet ( )
    % bet_fivebet takes no input
    % returns a vector representing users' five bet bet
    b = [ 37 38 1 2 3];
    vector = zeros(1, 38);
    vector(b) = 1;
end