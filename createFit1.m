% *******************************************************************************
% * Optical coding simulation algorithm for multi-state devices
% * Optoelectronic Laboratory, School of Physics and Information Engineering, Fuzhou University
% * This code is part of the application of multi-state devices to optical coding.
% * V1:2020/09/03
% * V2:2020/10/05
% * Developer list: 
% * Xianghong Zhang     Email: 982663975@qq.com 
% ********************************************************************************/


function [fitresult, gof] = createFit1(LTP)
%CREATEFIT(LTP)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      Y Output: LTP
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 03-Sep-2020 09:05:00 自动生成


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( [], LTP );

% Set up fittype and options.
ft = fittype( 'a*exp(-b*x)+c', 'independent', 'x', 'dependent', 'y' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.StartPoint = [0.753729094278495 0.380445846975357 0.567821640725221];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
%figure( 'Name', 'untitled fit 1' );
%h = plot( fitresult, xData, yData );
%legend( h, 'LTP', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
%ylabel( 'LTP', 'Interpreter', 'none' );
%grid on


