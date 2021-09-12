function  X = universe_out(universes,Resul_a,Resul_b,Crisp)


[X,count_a,count_b]  = PointsX(universes,Resul_a,Resul_b);

for h = 1 : size(X,1)
    if X{h,1} == inf || X{h,1} == - inf && Crisp > 0
        X{h,1} = max(X{h,2});
    elseif X{h,1} == inf || X{h,1} == - inf && Crisp < 0
        X{h,1} = min(X{h,2});
    end
end     

% figure
% axis([-1100 1100 0 1.1]);
% title('out system (Engine)')
% 
% for j = 1 : count_a%size(X,1)
%     hold on
%     plot(X{j,1},Resul_a(1,1),'b-o')
% end
% if Resul_b > 0 
% for j = 3 : count_b + j%size(Resul_b,1)
%     hold on
%     plot(X{j,1},Resul_b(1,1),'r-o')
% end
% end 
% for j = 1 : length(universes)
%     hold on
%     plot(universes{j,3}(1,:),universes{j,3}(2,:),'g','LineWidth',1)
% end


end