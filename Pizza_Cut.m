close
clear
clc
% Pizza theorem DEMO from K!W! BiRD 
% https://youtu.be/cCSZdpaaYQ0
% Contact:kiwibird0723@gmail.com

% r circle size
% x_0 y_0 are the cutting point of the pizza have to be located inside the circle
% n is the total cut number
% theta_0 the tilt angel between horizontal line for the first cut

r=8;
x_0=-3.3;
y_0=-3.2;
n=8;
theta_0=-12;
degree=180/n;

pbaspect([1 1 1])
viscircles([0 0],r,'Color','k')
set(gca,'XColor', 'none','YColor','none')
axis equal
hold on
pause(1)

for i=1:n
    hold on
    axis([-r r -r r])
    tan_theta=tan((theta_0+degree*i)*pi/180);
    b=y_0-tan_theta*x_0;
    x1=(-2*b*tan_theta+sqrt(4*b*b*tan_theta*tan_theta-4*(1+tan_theta*tan_theta)*(b^2-r^2)))/(2*(1+tan_theta^2))
    x2=(-2*b*tan_theta-sqrt(4*b*b*tan_theta*tan_theta-4*(1+tan_theta*tan_theta)*(b^2-r^2)))/(2*(1+tan_theta^2))
    y1=(2*b+sqrt(4*b*b-4*(1+tan_theta*tan_theta)*(b^2-r^2*tan_theta*tan_theta)))/(2*(1+tan_theta^2))
    y2=(2*b-sqrt(4*b*b-4*(1+tan_theta*tan_theta)*(b^2-r^2*tan_theta*tan_theta)))/(2*(1+tan_theta^2))
    
    if tan_theta>0
         h=plot([x1 x2],[y1 y2],'k')
         set(h(1),'linewidth',1,'linestyle','-');
         pause(0.25)
    end
    
    if tan_theta<0
         h=plot([x2 x1],[y1 y2],'k')
        set(h(1),'linewidth',1,'linestyle','-');
         pause(0.25)
    end
    
end
