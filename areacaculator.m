close
clc
clear

% Pizza theorem DEMO from K!W! BiRD 
% https://youtu.be/cCSZdpaaYQ0
% Contact:kiwibird0723@gmail.com


% Imput the colred pizza with the same file's name!
 
RGB = imread('Pizza1.png');
r_count=0;
g_count=0;
b_count=0;
y_count=0;
p_count=0;
l_count=0;
for i=1:size(RGB,1)
    for j=1:size(RGB,2)
        if RGB(i,j,1)==255 && RGB(i,j,2)==0   && RGB(i,j,3)==0   % Red
            r_count=r_count+1;
        end
        if RGB(i,j,1)==0   && RGB(i,j,2)==255 && RGB(i,j,3)==0   % Green
            g_count=g_count+1;
        end
        if RGB(i,j,1)==0   && RGB(i,j,2)==0   && RGB(i,j,3)==255 % Blue
            b_count=b_count+1;
        end
        if RGB(i,j,1)==255 && RGB(i,j,2)==255 && RGB(i,j,3)==0   % Yellow
            y_count=y_count+1;  
        end
        if RGB(i,j,1)==255 && RGB(i,j,2)==0   && RGB(i,j,3)==255 % Pink
            p_count=p_count+1;  
        end
        if RGB(i,j,1)==0   && RGB(i,j,2)==255 && RGB(i,j,3)==255 % Light blue
            l_count=l_count+1;  
        end
    end
end
total=r_count+g_count+b_count+y_count+p_count+l_count;
r_ratio=r_count/total*100
g_ratio=g_count/total*100
b_ratio=b_count/total*100
y_ratio=y_count/total*100
p_ratio=p_count/total*100
l_ratio=l_count/total*100

hold on
imshow(RGB)
title({['R=',num2str(r_ratio,3),'% ','G=',num2str(g_ratio,3),'% ','B=',num2str(b_ratio,3),'% '...
,'Y=',num2str(y_ratio,3),'% ','P=',num2str(p_ratio,3),'% ','L=',num2str(l_ratio,3),'%']    
})
