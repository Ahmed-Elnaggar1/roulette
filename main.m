clear;
clc;

starting_amount =input('How much do you want to start with?'); % amount of money starting with
goal = input('What is your goal to reach?'); % amount of money we want to reach
times_to_run = input('How many times do you want to spin?'); % number of times to run
bet_amount = input('How much do you want to place for each bet'); % amount of money placed for each bet
display_spin_results = false; % option to control whether to output spins

% initialization
current_money = starting_amount;
won_bets = 0;
lost_bets = 0;
total_bets = 0;
rounds = 0;
bets = []; % matrix to keep track of bets
all_win_percentages = [];
all_loss_percentages = [];

% choose simulation mode (1 or 2)
% will loop to run repeatedly depending on mode selected by user
while (true)
    simulation_mode = input('Run set number of times (1) or until reach goal or go bankrupt (2): ');
    if (simulation_mode == 1 || simulation_mode == 2) 
        break;
    end
end

% set bets
outputAllowedBets();
while (true)
    inputBet = input('Enter desired bet or -1 to finish betting: ');
    if (inputBet == -1)
        break;
    end
    if (inputBet >= 0 && inputBet <= 18)
        bets = [bets; createBet(inputBet)];
        fprintf('Bet placed\n');
    else
        fprintf('Invalid bet\n');
    end
end

condition = true; % set true to start (don't change)
% start simulation
while (condition)
    % simulate spin (37 = 0 and 38 = 00)
    result = randi([1 38]);
    if (display_spin_results)
        fprintf('Spin result: %d\n', result);
    end

    % interpret bets and spin result
    for k = 1:size(bets,1)
        % take money for each bet
        current_money = current_money - bet_amount;
        if (simulation_mode == 2 && current_money < bet_amount)
            break;
        end

        % determine if spin landed on any of spaces bet on
        if (bets(k, result) == 1) 
            % determine type of bet based on number of spaces bet on
            current = bets(k, :);
            num_spaces_bet = sum(current);
            % determine type of bet and payout
            payout = determine_payout(num_spaces_bet, bet_amount);
            current_money = current_money + payout;
            won_bets = won_bets + 1;
        else
            lost_bets = lost_bets + 1;
        end
        total_bets = total_bets + 1;
    end

    % calculate win and loss percentages
    current_win_percentage = (won_bets / total_bets) * 100;
    all_win_percentages = [all_win_percentages, current_win_percentage];

    current_loss_percentage = (lost_bets / total_bets) * 100;
    all_loss_percentages = [all_loss_percentages, current_loss_percentage];

    % conditions to continue looping 
    if (simulation_mode == 1)
        condition = rounds < times_to_run;
    else
        %  continue looping until reached goal or out of money
        condition = current_money < goal && current_money >= bet_amount;
    end
    % increment counter
    rounds = rounds + 1;
end

% output results
fprintf('\n\n');
if (simulation_mode == 2)
    fprintf('You lasted %d rounds.\n', rounds);
    fprintf('Current amount of money: $%d\n', current_money);
end
fprintf('Win percentage: %-5.2f%%\n', current_win_percentage);
fprintf('Loss percentage: %-5.2f%%\n', current_loss_percentage);

% Plot wins and loss percentages
figure;
subplot(1, 2, 1);
x = 1:length(all_win_percentages);
plot(x, all_win_percentages);
xlabel('Rounds');
ylabel('Win Percentage');

subplot(1, 2, 2);
x = 1:length(all_loss_percentages);
plot(x, all_loss_percentages);
xlabel('Rounds');
ylabel('Loss Percentage');

PMF_function();
mean_median();




