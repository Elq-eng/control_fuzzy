function Ua = COG(X,Crisp)

if size(X,1) == 4
    %first trapezoide 
    Points_B = [ 0 1 0 ; X{1,2} ];
    Points_b = [ X{1,3} X{1,3}; X{1,1} X{2,1}];
    trape = [Points_B(:,1)  Points_b Points_B(:,3)];
    figure 
    title('Aggregation of the rule outputs')
    plot(trape(2,:),trape(1,:),'r','LineWidth',1)
    h = X{1,3};
   
    hold on 
    %second trapezoide 
    Points_B_2 = [ 0 1 0 ; X{3,2} ];
    Points_b_2 = [ X{3,3} X{3,3}; X{3,1} X{4,1}];
    trape_2 = [Points_B_2(:,1)  Points_b_2 Points_B_2(:,3)];
    plot(trape_2(2,:),trape_2(1,:),'g','LineWidth',1)
    h_1 = X{3,3};
    
  
    dis = mean(trape(2,:))*h + mean(trape_2(2,:))*h_1;
    Ua = dis/(h_1+h); 
     
elseif size(X,1) == 3
    
    Points_B = [ 0 1 1 0 ; X{1,2} ];
    Points_b = [ X{1,3} X{1,3}; X{1,1} X{3,1}];
    trape = [Points_B(:,1)  Points_b Points_B(:,4)];
    figure
    title('Aggregation of the rule outputs')
    plot(trape(2,:),trape(1,:),'r','LineWidth',1)
    
    hold on 
    h = X{1,3};
    base_Higher = Points_b(2,1) - Points_b(2,2);
    Base_lower = Points_B(2,1) - Points_B(2,4);
    
    dis = mean(trape(2,:))*h;
    Ua = dis/(h);
      
elseif size(X,1) == 5
    Points_B = [ 0 1 1 0 ; X{1,2} ];
    Points_b = [ X{1,3} X{1,3}; X{1,1} X{2,1}];
    fend = [Points_B(1,4);Points_B(2,3)];
    trape = [Points_B(:,1)  Points_b (fend)];
    figure 
    title('Aggregation of the rule outputs')
    plot(trape(2,:),trape(1,:),'r','LineWidth',1)
    h = X{1,3};
    hold on 
    %second trapezoide 
    Points_B_2 = [ 0 1 1 0 ; X{3,2} ];
    Points_b_2 = [ X{3,3} X{3,3}; X{3,1} X{5,1}];
    %fend = [ Points_b_2(:,2);Points_B_2(2,3)];
    trape_2 = [Points_B_2(:,1)  Points_b_2  Points_B_2(:,4) ];
    plot(trape_2(2,:),trape_2(1,:),'r','LineWidth',1)
    h_1 = X{3,3};
        dis = mean(trape(2,:))*h + mean(trape_2(2,:))*h_1;
        Ua = dis/(h_1+h);
         
else 
    Points_B = [ 0 1 0 ; X{1,2} ];
    Points_b = [ X{1,3} X{1,3}; X{1,1} X{2,1}];
    trape = [Points_B(:,1)  Points_b Points_B(:,3)];
    figure
    title('Aggregation of the rule outputs')
    plot(trape(2,:),trape(1,:),'r','LineWidth',1)
    
    hold on 
    h = X{1,3};
    
    dis = mean(trape(2,:))*h;
    Ua = dis/(h);
        
    end
       

end
