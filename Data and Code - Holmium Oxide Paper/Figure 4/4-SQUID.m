%% Settings for plotting
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
LineWidth=2.5;
PlotLineWidth=3;
MarkerLineWidth=2;
% Scatter plot Marker size (squared)
sz = 49;


%% Data Imports - Ho film
fieldOe_4K = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];

Tesla_4K = fieldOe_4K/10000; %convert to tesla
EmuPerG_4K = [0.0594444444444444,6.66666666666667,13.3333333333333,19.8333333333333,26.2222222222222,32.4444444444444,32.4444444444444,47.4444444444445,61.6666666666667,74.4444444444445,85.5555555555556,96.6666666666667,106.666666666667,106.111111111111,125,140,152.222222222222,162.222222222222,170,176.666666666667,182.222222222222,187.222222222222,191.111111111111,195,194.444444444444,191.111111111111,186.666666666667,181.666666666667,176.111111111111,169.444444444444,161.666666666667,152.222222222222,140,125,106.111111111111,106.111111111111,96.1111111111111,85.5555555555556,73.8888888888889,61.6666666666667,32.6111111111111,32.6111111111111,26.5000000000000,20.2222222222222,13.8333333333333,7.22222222222222,0.511666666666667,0.496111111111111,-6.44444444444444,-11.618222222222222,-19.8333333333333,-26.1666666666667,-32.3333333333333,-32.3333333333333,-47.1666666666667,-61.1111111111111,-73.8888888888889,-85,-96.1111111111111,-106.111111111111,-106.111111111111,-125,-140,-152.222222222222,-162.222222222222,-170,-176.666666666667,-182.777777777778,-186.666666666667,-191.111111111111,-194.444444444444,-194.444444444444,-190.555555555556,-186.111111111111,-181.666666666667,-170,-161.666666666667,-152.222222222222,-140,-125,-106.666666666667,-106.111111111111,-96.1111111111111,-85.5555555555556,-73.8888888888889,-61.6666666666667,-47.7777777777778,-32.9444444444444,-32.9444444444444,-26.7222222222222,-20.3888888888889,-13.8888888888889,-7.27777777777778,-0.503888888888889]; 

EmuPerCm3_4K = EmuPerG_4K*8.41; %using density of Ho (III) Oxide, convert to emu/cm^3
TeslaResponse_4K = 4*pi*10^(-4)*EmuPerCm3_4K; %convert to Tesla


Temp = [2.00E+00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.20E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.71E+01 9.21E+01 9.70E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
EmuPerG_Temp = [195,191.111111111111,182.222222222222,170,156.111111111111,142.222222222222,130,118.333333333333,108.333333333333,100,92.7777777777778,90.5555555555556,80,74.4444444444445,70,65.5555555555556,61.6666666666667,58.3333333333333,55.5000000000000,52.6666666666667,50.2222222222222,47.9444444444445,45.8333333333333,43.8888888888889,42.1111111111111,40.5000000000000,39.0555555555556,37.6666666666667,36.3333333333333,35.0555555555556,33.8333333333333,32.6666666666667,31.6666666666667,30.7222222222222,29.7777777777778,28.9444444444444,28.1111111111111,27.3333333333333,26.6111111111111,25.8888888888889,25.2222222222222,24.6111111111111,24.0000000000000,23.4444444444444,22.8888888888889,22.3888888888889,21.8888888888889,21.4444444444444,21,20.5555555555556,20.1111111111111,19.7222222222222,19.3333333333333,18.9444444444444,18.5555555555556,18.2222222222222,17.8888888888889,17.5555555555556,17.2777777777778,16.9444444444444]; 
EmuPerCm3_Temp = EmuPerG_Temp*8.41; %using density of Ho (III) Oxide, convert to emu/cm^3
TeslaResponse_Temp = 4*pi*10^(-4)*EmuPerCm3_Temp; %convert to Tesla

Temp2 = Temp(30:59);
TeslaResponse_Temp2 = TeslaResponse_Temp(30:59);
tempinv = 1./Temp2;
respinv = 1./TeslaResponse_Temp2;


%% Data Imports - ZFC/FC and Remanence Measurements
ZFCEmuPerG = [5.559927273 5.638676364 4.662617576 4.073137576 3.549610909 2.899010909 2.404998182 2.068282424 1.800687273 1.606602424 1.43617697 1.301762424 1.19683697 1.104220606 1.027348485 0.958861212 0.901316364 0.849707879 0.803109091 0.762210909 0.724474545 0.692290303 0.661166061 0.633086061 0.60773697 0.58421497 0.561776727 0.541939576 0.523492848 0.506077576 0.489675152 0.474382 0.459752364 0.445839515 0.433136424 0.421296242 0.409432121 0.39892103 0.388738242 0.379231576 0.36963903 0.360866061 0.352340182 0.344362364 0.336607758 0.32921697 0.322137152 0.315317455 0.308721636 0.302496788 0.296763758 0.290704424 0.285174848 0.279641152 0.274516182 0.269502909 0.264724909 0.260029697 0.255627273 0.251330303];
FCEmuPerG = [6.105557576 5.676503575 4.802604387 4.178008119 3.551311877 3.061230843 2.364339324 2.164678071 1.9603346 1.606602424 1.412503636 1.292857576 1.192107273 1.105453939 1.028321818 0.961110909 0.903167879 0.852106667 0.80642 0.765804848 0.728603636 0.695534545 0.66482 0.63728303 0.61124303 0.587506424 0.565517273 0.546434667 0.527717455 0.510738121 0.49511297 0.479823333 0.465413091 0.45163497 0.438531697 0.426223333 0.414534606 0.403479455 0.393468 0.383690424 0.374325879 0.365425818 0.356853455 0.348259758 0.340686303 0.333487697 0.326038485 0.319415576 0.312557758 0.306384242 0.300242182 0.294203818 0.288475091 0.283192424 0.277908788 0.272765818 0.267741152 0.263232424 0.258558485 0.251324788];
Temp_FCZFC = [2.00E+00 7.00E+00 1.20E+01 1.70E+01 2.20E+01 2.70E+01 3.2E+01 3.70E+01 4.20E+01 4.70E+01 5.20E+01 5.70E+01 6.20E+01 6.70E+01 7.20E+01 7.70E+01 8.20E+01 8.70E+01 9.20E+01 9.70E+01 1.02E+02 1.07E+02 1.12E+02 1.17E+02 1.22E+02 1.27E+02 1.32E+02 1.37E+02 1.42E+02 1.47E+02 1.52E+02 1.57E+02 1.62E+02 1.67E+02 1.72E+02 1.77E+02 1.82E+02 1.87E+02 1.92E+02 1.97E+02 2.02E+02 2.07E+02 2.12E+02 2.17E+02 2.22E+02 2.27E+02 2.32E+02 2.37E+02 2.42E+02 2.47E+02 2.52E+02 2.57E+02 2.62E+02 2.67E+02 2.72E+02 2.77E+02 2.82E+02 2.87E+02 2.92E+02 2.97E+02];
ZFCEmuPerCm3 = ZFCEmuPerG*8.41; %using Ho2O3 density
FCEmuPerCm3 = FCEmuPerG*8.41; %using Ho2O3 density
ZFCTesla = 4*pi*10^(-4)*ZFCEmuPerCm3; % Tesla conversion
FCTesla = 4*pi*10^(-4)*FCEmuPerCm3;

%% Data Imports - Remanence
AbsPriorFieldOe = [100 100 200 200 500 500 1000 1000 2000 2000 5000 5000 10000 10000 20000 20000 40000 40000 70000 70000];
AbsPriorFieldTesla = AbsPriorFieldOe/(10^4);
LogTesla = log10(abs(AbsPriorFieldTesla));
RemanenceEmuPerG = [0.028214964 0.061827818 0.046473806 0.062398485 0.039699552 0.076207152 0.028282509 0.048678921 0.010827794 0.028950691 0.059292794 0.029464194 0.068381636 0.022844109 0.068891394 0.058473333 0.086379697 0.076778545 0.065996061 0.059316485];
RemanenceTesla = RemanenceEmuPerG*8.41*4*pi*10^(-4);
LogRemanenceTesla = log10(RemanenceTesla);


%% Plotting

figure1 = figure;
subplot(2,2,1)
p1 = scatter(Tesla_4K, TeslaResponse_4K, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

%x0 = [0.1,1E-8]; for tanh
x0 = [100,100];
fields = linspace(-10,10);
fun4kho = @(x,Tesla_4K)x(1)*(coth(x(2)*Tesla_4K+1E-8)-1./(x(2)*Tesla_4K+ 1E-8)); %langevin fit
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Upper',[Inf,Inf],...
               'StartPoint',[2,1]);
ft = fittype('a*(coth(b*x+1E-8)-1./(b*x+ 1E-8))','options',fo);
% Perform nonlinear fitting
[fitobject,gof,output]=fit(Tesla_4K.',TeslaResponse_4K.',ft)
% Extract coefficients for plotting
ho4kx1 = coeffvalues(fitobject)

p4 = plot(fields, fun4kho(ho4kx1, fields));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

xlim([-10 10]);
ylim([-2.5 2.5]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-2 -1 0 1 2])
set(gca,'XTick',[-5 0 5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

subplot(2,2,2)
p1 = scatter(Temp, TeslaResponse_Temp, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x1 = [0.1,0.1];
temps = linspace(0,297);
funho = @(x,Temp)x(1)*(coth(x(2)./Temp)-Temp/(x(2))); %langevin fit 
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[0,0],...
               'Upper',[Inf,Inf],...
               'StartPoint',[1,1]);
ft = fittype('a*(coth(b/x)-x/b)','options',fo);
% Perform nonlinear fitting
[fitobjectT,gof,output]=fit(Temp.',TeslaResponse_Temp.',ft)
% Extract coefficients for plotting
xho = coeffvalues(fitobjectT)




p2 = plot(temps, funho(xho, temps));
set(p2,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[0 0.5 1 1.5 2 2.5])
set(gca,'XTick',[0 100 200 300])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('Temp (K)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22) 

% Plot FC/ZFC curves. Note both curves on the upward slope were taken at
% 1000 Oe = 0.1 T. However, no field was applied prior to cooling/during
% cooling for ZFC, whereas FC applied 0.1T before lowering temperature

subplot(2,2,3)
p1 = scatter(LogTesla,LogRemanenceTesla, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

T = linspace(-4,2);

% Plot the constant known error 
% Calculated using system detection error is at least 2*abs(Measurement
% 1-Measurement 2); took the log to get about -3
SysErr = ((0.068381636 - 0.022844109)*2)*8.41*4*pi*1E-4;
LogSysErr = log10(SysErr);
p3 = plot(T, LogSysErr+T.*0);
set(p3,'Color',DefaultCrimson,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);


xlabel('Log \mu_0H (T)','Fontsize',22);
ylabel('Log Remanence (T)','Fontsize',22);

xlim([-2 1]);
ylim([-4 -2]);

% Add legend
txt = 'Measurement Noise Level';
text(0.9, -3, txt, 'HorizontalAlignment', 'right', 'VerticalAlignment','bottom','FontSize',22);


set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-4 -3 -2])
set(gca,'XTick',[-2 -1 0 1])
pbaspect([1.618 1 1])


subplot(2,2,4)
p1 = scatter(Temp_FCZFC, FCTesla, sz, '^');
set(p1,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
box on
hold all

p2 = scatter(Temp_FCZFC, ZFCTesla, sz, 'o');
set(p2,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.7);

% Fit to langevin
x1 = [0.1,0.1];
temps2 = linspace(0,297);
funho2 = @(x,Temp_FCZFC)x(1)*(coth(x(2)./Temp_FCZFC)-Temp_FCZFC/(x(2)));
xho2 = lsqcurvefit(funho2,x1,Temp_FCZFC,FCTesla);

p4 = plot(temps2, funho2(xho2, temps2));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')
uistack(p2,'top')

xlim([0 300]);
ylim([0 0.1]);

xlabel('Temp (K)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22)

% Add legend
leg = legend('FC Fit', 'FC Curve','ZFC Curve');
set(leg,'Location', 'northeast','Fontsize',22)
set(leg, 'Box', 'off')


set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[0 0.05 0.1])
set(gca,'XTick',[0 100 200 300])
pbaspect([1.618 1 1])

fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 17 11]) % make paper larger
print(gcf, 'magnet_draft5.png', '-dpng', '-r300' ) % save 300 dpi file
