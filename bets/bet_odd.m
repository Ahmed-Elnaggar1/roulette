function vector = bet_odd ( )
    % bet_odd takes no input
    % returns a vector representing users' odd bet
    odd = 1:2:35;
    vector = zeros(1, 38);
    vector(odd) = 1;
end

