function vector = bet_split() 
    % bet_split takes no input
    % returns a vector representing users' split bet
     while (true)
        % choose first number
        while (true)
            fprintf("37 = 0 and 38 = 00\n");
            spot1 = input("Enter the first number to bet on: ");
            if (spot1 >= 1 && spot1 <= 38)
                break;
            end
            fprintf("Invalid bet\n");
        end
        % choose second number
        while (true)
            fprintf("37 = 0 and 38 = 00\n");
            spot2 = input("Enter the second number to bet on: ");
            if (spot2 >= 1 && spot2 <= 38)
                break;
            end
            fprintf("Invalid bet\n");
        end
        if (spot2 == spot1 + 1 || spot2 == spot1 - 1 || spot2 == spot1 + 3 || spot2 == spot1 - 3)
            break;
        end
        fprintf("Invalid split bet\n");
    end
    vector = zeros(1, 38);
    vector(spot1) = 1;
    vector(spot2) = 1;
end