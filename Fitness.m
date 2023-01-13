%=========================== Fitness Function =============================

function [fit]=My_Fit (pop_size,population)
fit=power(population(:,1),2)+power(population(:,2),2);
end