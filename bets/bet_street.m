function vector = bet_street ( )
    % bet_street takes no input
    % returns a vector representing users' street bet
    while (true)
        street = input('Enter the street to bet on (1-12): ');
        if (street >= 1 && street <= 12)
            break;
        end
        fprintf('Invalid bet\n');
    end
    vector = zeros(1, 38);
    vector((street - 1) * 3 + 1) = 1;
    vector((street - 1) * 3 + 2) = 1;
    vector((street - 1) * 3 + 3) = 1;
end