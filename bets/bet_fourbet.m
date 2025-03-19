function vector = bet_fourbet ( )
    % bet_fourbet takes no input
    % returns a vector representing users' four bet bet
    b = [37 1 2 3];
    vector = zeros(1, 38);
    vector(b) = 1;
end
