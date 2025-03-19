function PMF_function()
% American Roulette PMF with 38 slots
% 0 and 00 have their own slot

% Define the number of slots
num_slots = 38;

% Define the probability for each slot
p = zeros(1,num_slots);
p(1:36) = 1/38; % numbers 1-36 have probability 1/38
p(37) = 1/38; % 0 has probability 1/38
p(38) = 1/38; % 00 has probability 1/38

% Define the random variable range(the random variable x represents the possible outcomes
%of a single spin of the roulette wheel. 
%Specifically, it takes on values from 0 to 37, where 0 represents the green slots 
%(0 or 00, depending on the type of roulette wheel), and 1 to 36 represent the numbers on the wheel.)
x = 0:num_slots-1;

% Calculate the PMF
pmf = zeros(1,num_slots);
for i = 1:num_slots
    pmf(i) = p(i)*100; % multiply by 100 for percentage
end
% calculate the CDF
cdf = zeros(1,num_slots);
cdf(1) = pmf(1);
for i = 2:num_slots
    cdf(i) = cdf(i-1) + pmf(i);
end
figure;
% Plot the PMF
subplot(1,2,1);
grid on;
bar(x,pmf);
title('American Roulette PMF');
xlabel('Number on Roulette Wheel');
ylabel('Probability (%)');

% Plot the CDF
subplot(1,2,2);
grid on;
bar(x,cdf);
title('American Roulette CDF');
xlabel('Number on Roulette Wheel');
ylabel('Probability (%)');

end