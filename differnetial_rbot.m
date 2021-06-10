%UAV final destination
p=8;
q=3;
plot(p,q,'*')
hold on
%robot initial position
a=0;
b=0;
% robot current co-ordinates
x_old=a;
y_old=b;
x_new=0;
y_new=0;
% desired angle to goal
phi_desired= atan((p-a)/(q-a))
% taking gain as 1
k=1;
% time step
t= 0.1;
%velocity
vel_x=1;
vel_y=1;
v=1;
phi_old=0; 
phi_new=0;   %intial angle of heading 

while (1)
    if (x_new==p && y_new==q)
        break;
    end
    err=phi_desired-phi_old;    %error calc
        % w is the angular velocity
        w=k*err;
        phi_new=t*w+phi_old;
        vel_x=v*sin(phi_new);
        vel_y=v*cos(phi_new);
        pause(t);
        x_new=x_old+vel_x * t;
        y_new=y_old+vel_y * t;
        phi_old=atan((p-y_new)/(q-x_new));    
        plot(x_new,y_new,'*');
        hold on
        x_old=x_new;
        y_old=y_new;
        
        %this would handle the case when phi_desired=355*pi/180 and phi_old=5*pi/180 
        diff = phi_desired -  phi_old;
        if (diff>pi)
            diff = diff - 2*pi;
        elseif (diff<-pi)
            diff = diff + 2*pi;
        end 
end 