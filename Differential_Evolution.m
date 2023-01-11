%==================== Differential Evolution Function =====================

function My_DE()
clc;
[population,pop_size,maxgen,Beta,n,pr]=My_Initial()
[fit]=My_Fit(pop_size, population)
My_Plot(population,pop_size,fit)

t=1;
while(t<maxgen)
    fprintf('\n======= Iteretion:%d Is Mutation =======\n',t);
        for i=1:pop_size
            temp=randperm(pop_size)
            mutation=setdiff(temp,i,"stable")
            i1=mutation(1,1)
            u=population(temp(1,1),:)+Beta*(population(temp(1,2),:)-population(temp(1,3),:))
            child(i,:)=population(i,:)
            j_star=randi(1:2)
            nom_value=2;
            for j=1:nom_value
            r=rand();
                if (r<=pr) || (j==j_star)
                    child(1,j)=u(1,j)
                end
            end
        end

        %fprintf('\n======= Iteretion:%d Is Crossover ======\n',t);
        
        
        
        

        %fprintf('\n============= Selection ============\n');

        fit_child=My_Fit(pop_size,child)
        for i=1 :pop_size
            if fit_child(i)<=fit(i)
                population(i,:)=child(i,:);
                fit(i)=fit_child(i);
            end
        end
    t=t+1;
end
end