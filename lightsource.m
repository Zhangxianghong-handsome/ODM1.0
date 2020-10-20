% *******************************************************************************
% * Optical coding simulation algorithm for multi-state devices
% * Optoelectronic Laboratory, School of Physics and Information Engineering, Fuzhou University
% * This code is part of the application of multi-state devices to optical coding.
% * V1:2020/09/03
% * V2:2020/10/05
% * Developer list: 
% * Xianghong Zhang     Email: 982663975@qq.com 
% ********************************************************************************/


function Id=lightsource(x)
LTPInitial=load('LTPInitial.csv');
if (x<=80)&&(x>0)
    LTP = smoothdata(LTPInitial(:,1));
    Fit=createFit(LTP);
elseif (x<=131)&&(x>80)
    LTP = smoothdata(LTPInitial(:,2));
    Fit=createFit(LTP);
    x=x-51;
elseif (x<=182)&&(x>131)
    LTP = smoothdata(LTPInitial(:,3));
    Fit=createFit(LTP);
    x=x-102;    
elseif (x<=233)&&(x>182)
    LTP = smoothdata(LTPInitial(:,4));
    Fit=createFit1(LTP);
    x=x-153;   
elseif (x<=284)&&(x>233)
    LTP = smoothdata(LTPInitial(:,5));
    Fit=createFit1(LTP);
    x=x-204;
elseif (x<=335)&&(x>284)
    LTP = smoothdata(LTPInitial(:,6));
    Fit=createFit1(LTP);
    x=x-255;     
elseif (x<=386)&&(x>335)
    LTP = smoothdata(LTPInitial(:,7));
    Fit=createFit1(LTP);
    x=x-306;
elseif (x<=437)&&(x>386)
    LTP = smoothdata(LTPInitial(:,8));
    Fit=createFit1(LTP);
    x=x-357;
end
Id=Fit(x);
end