% *******************************************************************************
% * Optical coding simulation algorithm for multi-state devices
% * Optoelectronic Laboratory, School of Physics and Information Engineering, Fuzhou University
% * This code is part of the application of multi-state devices to optical coding.
% * V1:2020/09/03
% * V2:2020/10/05
% * Developer list: 
% * Xianghong Zhang     Email: 982663975@qq.com 
% ********************************************************************************/

function [Id_simulink]=TestSource()
Id_simulink=zeros(1,437);
for i=1:437
Id_simulink(i)=lightsource(i);
end
end

