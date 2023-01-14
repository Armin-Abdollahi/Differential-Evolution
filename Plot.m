%============================ Plot Function ===============================

function My_Plot(population,pop_size,fit)
[fit]=My_Fit(pop_size,population)
[x1,x2]=meshgrid(-5:0.5:5);
y=x1.^2+x2.^2
mesh(x1,x2,y)

hold on
for i=1:pop_size
    plot3(population(i,1),population(i,2),fit (i,1),'*')
end
hold off

end