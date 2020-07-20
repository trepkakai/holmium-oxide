%% Color imports
RedAccent =[229/255,20/255,0/255];
BlueAccent =[76/255,174/255,227/255];
GreenAccent =[51/255,153/255,51/255];
White=[1 1 1];
Black=[0 0 0];
DefaultBlue=[0    0.4470    0.7410];
DefaultOrange=[0.8500    0.3250    0.0980];
DefaultYellow=[0.9290    0.6940    0.1250];
DefaultPurple=[0.4940    0.1840    0.5560];
DefaultGreen=[0.4660    0.6740    0.1880];
DefaultLightBlue=[0.3010    0.7450    0.9330];
DefaultCrimson=[0.6350    0.0780    0.1840];
MarkerSize=7;
MarkerLineWidth=2.5;
LineWidth=2.5;
PlotLineWidth=3;
sz = 49;


%% Imports

ZFCEmuPerG = [5.559927273 5.638676364 4.662617576 4.073137576 3.549610909 2.899010909 2.404998182 2.068282424 1.800687273 1.606602424 1.43617697 1.301762424 1.19683697 1.104220606 1.027348485 0.958861212 0.901316364 0.849707879 0.803109091 0.762210909 0.724474545 0.692290303 0.661166061 0.633086061 0.60773697 0.58421497 0.561776727 0.541939576 0.523492848 0.506077576 0.489675152 0.474382 0.459752364 0.445839515 0.433136424 0.421296242 0.409432121 0.39892103 0.388738242 0.379231576 0.36963903 0.360866061 0.352340182 0.344362364 0.336607758 0.32921697 0.322137152 0.315317455 0.308721636 0.302496788 0.296763758 0.290704424 0.285174848 0.279641152 0.274516182 0.269502909 0.264724909 0.260029697 0.255627273 0.251330303];
FCEmuPerG = [6.105557576 5.676503575 4.802604387 4.178008119 3.551311877 3.061230843 2.364339324 2.164678071 1.9603346 1.606602424 1.412503636 1.292857576 1.192107273 1.105453939 1.028321818 0.961110909 0.903167879 0.852106667 0.80642 0.765804848 0.728603636 0.695534545 0.66482 0.63728303 0.61124303 0.587506424 0.565517273 0.546434667 0.527717455 0.510738121 0.49511297 0.479823333 0.465413091 0.45163497 0.438531697 0.426223333 0.414534606 0.403479455 0.393468 0.383690424 0.374325879 0.365425818 0.356853455 0.348259758 0.340686303 0.333487697 0.326038485 0.319415576 0.312557758 0.306384242 0.300242182 0.294203818 0.288475091 0.283192424 0.277908788 0.272765818 0.267741152 0.263232424 0.258558485 0.251324788];
Temp_FCZFC = [2.00E+00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.2E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.70E+01 9.20E+01 9.70E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
ZFCEmuPerCm3 = ZFCEmuPerG*8.41; %using Ho2O3 density
FCEmuPerCm3 = FCEmuPerG*8.41; %using Ho2O3 density
ZFCTesla = 4*pi*10^(-4)*ZFCEmuPerCm3; % Tesla conversion
FCTesla = 4*pi*10^(-4)*FCEmuPerCm3;


Temp = [2.00E+00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.71E+01 9.21E+01 9.70E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
EmuPerG_Temp = [195,191.111111111111,182.222222222222,170,156.111111111111,142.222222222222,130,118.333333333333,108.333333333333,100,92.7777777777778,90.5555555555556,80,74.4444444444445,70,65.5555555555556,61.6666666666667,58.3333333333333,55.5000000000000,52.6666666666667,50.2222222222222,47.9444444444445,45.8333333333333,43.8888888888889,42.1111111111111,40.5000000000000,39.0555555555556,37.6666666666667,36.3333333333333,35.0555555555556,33.8333333333333,32.6666666666667,31.6666666666667,30.7222222222222,29.7777777777778,28.9444444444444,28.1111111111111,27.3333333333333,26.6111111111111,25.8888888888889,25.2222222222222,24.6111111111111,24.0000000000000,23.4444444444444,22.8888888888889,22.3888888888889,21.8888888888889,21.4444444444444,21,20.5555555555556,20.1111111111111,19.7222222222222,19.3333333333333,18.9444444444444,18.5555555555556,18.2222222222222,17.8888888888889,17.5555555555556,17.2777777777778,16.9444444444444]; 
EmuPerCm3_Temp = EmuPerG_Temp*8.41; %using density of Ho (III) Oxide, convert to emu/cm^3
TeslaResponse_Temp = 4*pi*10^(-4)*EmuPerCm3_Temp; %convert to Tesla

t_len = length(Temp);

%% Analysis

% Define fitting function (same as in Figure 4)
x1 = [.06,30];
funho = @(x,Temp)x(1)*(coth(x(2)./Temp)-Temp/(x(2)));
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,15.5],...
               'Upper',[10,Inf],...
               'StartPoint',[1,1]);
ft = fittype('a*(coth(b/x)-x/b)','options',fo); % Langevin
%ft = fittype('a*(tanh(b/x))','options',fo); % Tanh

% select maximum temperature to show. N is the number of points to exclude
t_max = 47;
n = (t_max-2)/5 + 2;

% Define 0 arrays of the intercepts and errors. Error is in sse. Fit_ci
% is the error on the fit (95% ci)
mintemp = zeros(1,n);
ints = zeros(1,n);
fit_ci = zeros(1,n);
errs = zeros(1,n);
bcoef = zeros(1,n);

% Create a for loop
for i = 1:n
    % for each i, compute the fit
    t_i = Temp(i:end);
    resp_i = TeslaResponse_Temp(i:end);
    % Perform fit
    [fitobject,gof,output]=fit(t_i.',resp_i.',ft);
    xho = coeffvalues(fitobject);
    % Extract confidence interval
    ci = confint(fitobject,0.95);
    % Store relevant values in array
    mintemp(i) = t_i(1);
    ints(i) = xho(1);
    bcoef(i) = xho(2);
    fit_ci(i) = (ci(2)-ci(1))/2;
    % Normalize to sse/datapoint
    errs(i) = gof.sse/(t_len - i);
end

%% Plotting

% Plot Ms and error
figure1 = figure;
subplot(1,3,1)
% Plot using shadedErrorBar function
y = [ints; ints+fit_ci; ints-fit_ci];
shadedErrorBar(mintemp, y, {@mean,@std},'lineprops','-b')
hold on
p1 = plot(mintemp, ints);
set(p1,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);

box on
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[2 t_max])
set(gca, 'YTick', [2 2.5 3 3.5])
pbaspect([1 1.618 1])
xlim([2, t_max])
ylim([2, 3.5])
xlabel('T_{min} in fit (K)')
ylabel('\mu_0M_s (T)')



% Plot sse
subplot(1,3,2)
p1 = plot(mintemp, errs/max(errs));
set(p1,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold on
%p2 = scatter(mintemp, errs/max(errs), sz, 'o')
%set(p2,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);

box on
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[2 t_max])
pbaspect([1 1.618 1])
xlim([2, t_max])
xlabel('T_{min} in fit (K)')
ylabel('Sum of residuals (normalized)')


% Curie-Weiss - Take Inverse and Plot
subplot(1,3,3)
p1 = plot(Temp_FCZFC,.1./FCTesla,'-') % Units: \chi (SI, unitless)
set(p1,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold on
%p2 = scatter(Temp_FCZFC,.1./FCTesla, sz,'o')
%set(p2,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);

box on
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[2 100 200 297])
set(gca,'YTick',[0 20 40])
pbaspect([1 1.618 1])
xlim([2, 297])
ylim([0, 40])
xlabel('T (K)')
ylabel('1/\chi')

%% Export

fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 17 9]) % make paper larger
print(gcf, 'antiferro_fig.png', '-dpng', '-r300' ) % save 300 dpi file

