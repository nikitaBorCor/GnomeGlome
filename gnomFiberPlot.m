%plot setup
hold off
plot3(0,0,0);
hold on

incr=pi/30; %angle increment (try changing it)

%arrays of polar angles(theta) and azimuthal angles(phi)
thetaArr=0:incr:2*pi; %an array of values
phiArr=pi*0.5; %a single value

%you can also fix a single theta value and vary the phi values

%parameter to plot different points on the same line
t=-10:2:10;

for i=1:length(thetaArr)
   for j=1:length(phiArr)
        theta=thetaArr(i);
        phi=phiArr(j);
        
        
        xt=tan(theta/2)+t*sec(theta/2)^2;
        yt=tan(phi/2)+t*2*tan(theta/2)*tan(phi/2);
        zt=-tan(theta/2)*tan(phi/2)+t*(1-tan(theta/2)^2)*tan(phi/2);
        
        plot3(xt,yt,zt,'blue');

   end
end

%plot speficiations

size=5;

xlim([-size,size])
ylim([-size,size])
zlim([-size,size])

hold off

