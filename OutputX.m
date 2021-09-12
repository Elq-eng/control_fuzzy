function [X,count_a,count_b] = OutputX(a,b,Resul_a,Resul_b);

X = {};
count_a = 0; 
count_b = 0;
if b == 0
    % the output of the universe has only a vector
    if size(a,2) < 4
        
        Ytotal = Resul_a(1,1);
        universesout = a(1,:);
        for i = 1 : size(a,2)-1
            X1 = a(1,i);
            Y1 = a(2,i);
            X2 = a(1,i+1);
            Y2 = a(2,i+1);
            m = (Y2 - Y1)/(X2 - X1);
            bRL = Y1 - m*X1;
            Y = Ytotal(1,1);
            X{i,1} = (Y-bRL)/m;
            X{i,2} = universesout(1,:);
            X{i,3} = Y;
            count_a = count_a + 1;
        end 
    else
        %size(a,2)==4 || size(b,2)==4
        %here define the value if the vector is trapezoidal
        if isempty(Resul_b) == 1 || b == 0
             Ytotal = Resul_a(1,1);
             universesout = a(1,:);
        else 
        Ytotal = [Resul_a(1,1); Resul_b(1,1)];
        universesout = [a(1,:); b(1,:)];
        end
                
        for i = 1 : size(a,2)-1
            X1 = a(1,i);
            Y1 = a(2,i);
            X2 = a(1,i+1);
            Y2 = a(2,i+1);
            m = (Y2 - Y1)/(X2 - X1);
            bRL = Y1 - m*X1;
            Y = Ytotal(1,1);
            X{i,1} = (Y-bRL)/m;
            X{i,2} = universesout(1,:);
            X{i,3} = Y;
            count_a = count_a + 1;
            if isempty(Resul_b) == 1 && i == (size(a,2)-1)
                break;
            else
            end
        end
        for i = 1 : size(b,2)-1
            X1 = b(1,i);
            Y1 = b(2,i);
            X2 = b(1,i+1);
            Y2 = b(2,i+1);
            m = (Y2 - Y1)/(X2 - X1);
            bRL = Y1 - m*X1;
            Y = Ytotal(2,1);
            X{i+2,1} = (Y-bRL)/m;
            X{i+2,2} = universesout(2,:);
            X{i+2,3} = Y;
            count_b = count_b + 1;
        end
        
        
    end
    
elseif size(a,2)==4 || size(b,2)==4
    if size(b,2)==4
    Ytotal = [Resul_a(1,1); Resul_b(1,1)];
    universesout = [a(1,:) 0; b(1,:)];
    
    for i = 1 : size(a,2)-1
        X1 = a(1,i);
        Y1 = a(2,i);
        X2 = a(1,i+1);
        Y2 = a(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(1,1);
        X{i,1} = (Y-bRL)/m;
        X{i,2} = universesout(1,:); 
        X{i,3} = Y;
        count_a = count_a + 1;
    end
    for i = 1 : size(b,2)-1
        X1 = b(1,i);
        Y1 = b(2,i);
        X2 = b(1,i+1);
        Y2 = b(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(2,1);
        X{i+2,1} = (Y-bRL)/m;
        X{i+2,2} = universesout(2,:); 
        X{i+2,3} = Y;
        count_b = count_b + 1; 
    end
    else 
        Ytotal = [Resul_a(1,1); Resul_b(1,1)];
        universesout = [a(1,:); b(1,:) 0];
    
    for i = 1 : size(a,2)-1
        X1 = a(1,i);
        Y1 = a(2,i);
        X2 = a(1,i+1);
        Y2 = a(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(1,1);
        X{i,1} = (Y-bRL)/m;
        X{i,2} = universesout(1,:); 
        X{i,3} = Y;
        count_a = count_a + 1;
    end
    for i = 1 : size(b,2)-1
        X1 = b(1,i);
        Y1 = b(2,i);
        X2 = b(1,i+1);
        Y2 = b(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(2,1);
        X{i+2,1} = (Y-bRL)/m;
        X{i+2,2} = universesout(2,:); 
        X{i+2,3} = Y;
        count_b = count_b + 1; 
    end
    end
elseif size(a,2)==3 || size(b,2)==3
    %here define the value if the vector is triangular
    Ytotal = [Resul_a(1,1); Resul_b(1,1)];
    universesout = [a(1,:); b(1,:)];
    
    for i = 1 : size(a,2)-1
        X1 = a(1,i);
        Y1 = a(2,i);
        X2 = a(1,i+1);
        Y2 = a(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(1,1);
        X{i,1} = (Y-bRL)/m;
        X{i,2} = universesout(1,:); 
        X{i,3} = Y;
        count_a = count_a + 1;
    end
    for i = 1 : size(b,2)-1
        X1 = b(1,i);
        Y1 = b(2,i);
        X2 = b(1,i+1);
        Y2 = b(2,i+1);
        m = (Y2 - Y1)/(X2 - X1);
        bRL = Y1 - m*X1;
        Y = Ytotal(2,1);
        X{i+2,1} = (Y-bRL)/m;
        X{i+2,2} = universesout(2,:); 
        X{i+2,3} = Y;
        count_b = count_b + 1; 
    end
    
end

end 