% *******************************************************************************
% * Optical coding simulation algorithm for multi-state devices
% * Optoelectronic Laboratory, School of Physics and Information Engineering, Fuzhou University
% * This code is part of the application of multi-state devices to optical coding.
% * V1:2020/09/03
% * V2:2020/10/05
% * Developer list: 
% * Xianghong Zhang     Email: 982663975@qq.com 
% ********************************************************************************/

function [fitresult, gof] = createFit(y)
%CREATEFIT1(Y)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      Y Output: y
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 05-Oct-2020 16:43:52 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( [], y );

% Set up fittype and options.
ft = fittype( 'exp2' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [4.72182014670227e-07 0.000245589755540983 -3.12670321774517e-07 -0.125771144065168];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, xData, yData );
% legend( h, 'y', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% % Label axes
% ylabel( 'y', 'Interpreter', 'none' );
% grid on


