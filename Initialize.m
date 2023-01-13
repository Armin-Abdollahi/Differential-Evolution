%======================== Initialization Function =========================

function [population,pop_size,maxgen,Beta,n,pr]=My_Initial()
pr=0.5;
Beta=0.5;
n=2;                            %Number Of Gen
maxgen=100;                     %Maximum Number Of Generations
pop_size=10;                    %Number Of Solutions In The Population
minvalue=-5;                    %Minimum Value Of
maxvalue=5;                     %Maximum Value Of
population=minvalue+(maxvalue-minvalue)*rand(pop_size,n);
end