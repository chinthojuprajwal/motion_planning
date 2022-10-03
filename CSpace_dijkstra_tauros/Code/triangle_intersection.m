function flag = triangle_intersection(P1, P2)
% triangle_test : returns true if the triangles overlap and false otherwise

%%% All of your code should be between the two lines of stars.
% *******************************************************************
sep1=0;sep2=0;sep3=0;
    
        i=1;
        m=(P1(i,2)-P1(i+1,2))/(P1(i,1)-P1(i+1,1));
         if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P2(1,2)-P1(i,2))-m*(P2(1,1)-P1(i,1));
        s2=(P2(2,2)-P1(i,2))-m*(P2(2,1)-P1(i,1));
        s3=(P2(3,2)-P1(i,2))-m*(P2(3,1)-P1(i,1));
        s4=(P1(i+2,2)-P1(i,2))-m*(P1(i+2,1)-P1(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            sep1=1;
        end
        
        i=2;
        m=(P1(i,2)-P1(i+1,2))/(P1(i,1)-P1(i+1,1));
         if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P2(1,2)-P1(i,2))-m*(P2(1,1)-P1(i,1));
        s2=(P2(2,2)-P1(i,2))-m*(P2(2,1)-P1(i,1));
        s3=(P2(3,2)-P1(i,2))-m*(P2(3,1)-P1(i,1));
        s4=(P1(1,2)-P1(i,2))-m*(P1(1,1)-P1(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            sep3=1;
        end
        
        i=3;
        m=(P1(i,2)-P1(1,2))/(P1(i,1)-P1(1,1));
        if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P2(1,2)-P1(i,2))-m*(P2(1,1)-P1(i,1));
        s2=(P2(2,2)-P1(i,2))-m*(P2(2,1)-P1(i,1));
        s3=(P2(3,2)-P1(i,2))-m*(P2(3,1)-P1(i,1));
        s4=(P1(2,2)-P1(i,2))-m*(P1(2,1)-P1(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            sep2=1;
        end
        
        
        seP2=0;seP1=0;seP2=0;
    
        i=1;
        m=(P2(i,2)-P2(i+1,2))/(P2(i,1)-P2(i+1,1));
         if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P1(1,2)-P2(i,2))-m*(P1(1,1)-P2(i,1));
        s2=(P1(2,2)-P2(i,2))-m*(P1(2,1)-P2(i,1));
        s3=(P1(3,2)-P2(i,2))-m*(P1(3,1)-P2(i,1));
        s4=(P2(i+2,2)-P2(i,2))-m*(P2(i+2,1)-P2(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            seP2=1;
        end
        
        i=2;
        m=(P2(i,2)-P2(i+1,2))/(P2(i,1)-P2(i+1,1));
         if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P1(1,2)-P2(i,2))-m*(P1(1,1)-P2(i,1));
        s2=(P1(2,2)-P2(i,2))-m*(P1(2,1)-P2(i,1));
        s3=(P1(3,2)-P2(i,2))-m*(P1(3,1)-P2(i,1));
        s4=(P2(1,2)-P2(i,2))-m*(P2(1,1)-P2(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            seP2=1;
        end
        
        i=3;
        m=(P2(i,2)-P2(1,2))/(P2(i,1)-P2(1,1));
        if isinf(m)
            m=sign(m)*10^20;
        end
        s1=(P1(1,2)-P2(i,2))-m*(P1(1,1)-P2(i,1));
        s2=(P1(2,2)-P2(i,2))-m*(P1(2,1)-P2(i,1));
        s3=(P1(3,2)-P2(i,2))-m*(P1(3,1)-P2(i,1));
        s4=(P2(2,2)-P2(i,2))-m*(P2(2,1)-P2(i,1));
        if sign(s1)*sign(s2)>0 && sign(s2)*sign(s3)>0 && sign(s2)*sign(s4)<0
            seP1=1;
        end
           
if sep1==1 || sep2==1 || sep3==1 || seP2==1 || seP1==1 || seP2==1
    flag=false;
else 
    flag=true;
end

% *******************************************************************
end