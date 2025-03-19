function mean_median()
num_slots = 38; % number of slots in American roulette
x = 0:num_slots-1; % possible values of the random variable caring for double slots 0 and 00
PMF = ones(1,num_slots)*(1/num_slots); % probability mass function

% calculate mean
mean_value = sum(x.*PMF);

% calculate median
cdf = cumsum(PMF);
median_value = x(find(cdf >= 0.5, 1));

fprintf('Mean: %.2f\n', mean_value);
fprintf('Median: %d\n', median_value);
end