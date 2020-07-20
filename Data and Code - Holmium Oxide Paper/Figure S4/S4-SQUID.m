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
MarkerLineWidth=2;
LineWidth=2.5;
PlotLineWidth=3;
sz = 49;

%% Data imports

FieldOe_16K = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -4.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
Emu_16K = [-2.85E-05 7.32E-03 1.43E-02 2.12E-02 2.80E-02 3.48E-02 3.48E-02 5.13E-02 6.77E-02 8.38E-02 9.96E-02 1.15E-01 1.30E-01 1.30E-01 1.58E-01 1.84E-01 2.07E-01 2.27E-01 2.45E-01 2.62E-01 2.77E-01 2.90E-01 3.02E-01 3.13E-01 3.12E-01 3.02E-01 2.90E-01 2.76E-01 2.62E-01 2.45E-01 2.27E-01 2.07E-01 1.84E-01 1.58E-01 1.16E-01 1.00E-01 8.42E-02 6.78E-02 5.13E-02 3.48E-02 3.48E-02 2.80E-02 2.12E-02 1.43E-02 7.29E-03 -3.52E-05 -3.56E-05 -7.39E-03 -1.44E-02 -2.13E-02 -2.81E-02 -3.49E-02 -3.49E-02 -5.14E-02 -6.77E-02 -8.40E-02 -9.97E-02 -1.15E-01 -1.30E-01 -1.30E-01 -1.58E-01 -1.84E-01 -2.07E-01 -2.28E-01 -2.46E-01 -2.62E-01 -2.77E-01 -2.90E-01 -3.02E-01 -3.13E-01 -3.13E-01 -3.02E-01 -2.90E-01 -2.76E-01 -2.62E-01 -2.45E-01 -2.27E-01 -2.07E-01 -1.84E-01 -1.58E-01 -1.30E-01 -1.30E-01 -1.15E-01 -9.97E-02 -8.39E-02 -6.78E-02 -5.15E-02 -3.48E-02 -3.48E-02 -2.80E-02 -2.12E-02 -1.43E-02 -7.28E-03 3.90E-05];
FieldOe_RT = [0.00E+00 1.00E+03 2.00E+03 3.00E+03 4.00E+03 5.00E+03 5.00E+03 7.50E+03 1.00E+04 1.25E+04 1.50E+04 1.75E+04 2.00E+04 2.00E+04 2.50E+04 3.00E+04 3.50E+04 4.00E+04 4.50E+04 5.00E+04 5.50E+04 6.00E+04 6.50E+04 7.00E+04 7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04 -7.00E+04 -6.50E+04 -6.00E+04 -5.50E+04 -5.00E+04 -4.50E+04 -4.00E+04 -3.50E+04 -3.00E+04 -2.50E+04 -2.00E+04 -2.00E+04 -1.75E+04 -1.50E+04 -1.25E+04 -1.00E+04 -7.50E+03 -5.00E+03 -5.00E+03 -3.00E+03 -2.00E+03 -1.00E+03 0.00E+00];
Emu_RT = [-3.97E-06 4.69E-04 9.16E-04 1.36E-03 1.80E-03 2.24E-03 2.24E-03 3.34E-03 4.44E-03 5.54E-03 6.64E-03 7.74E-03 8.85E-03 8.84E-03 1.11E-02 1.32E-02 1.54E-02 1.76E-02 1.97E-02 2.19E-02 2.41E-02 2.63E-02 2.85E-02 3.07E-02 3.06E-02 2.85E-02 2.63E-02 2.41E-02 2.19E-02 1.98E-02 1.76E-02 1.54E-02 1.32E-02 1.10E-02 8.75E-03 8.80E-03 7.71E-03 6.62E-03 5.53E-03 4.43E-03 1.79E-03 1.37E-03 9.21E-04 4.72E-04 -5.34E-06 -5.24E-06 -4.64E-04 -9.19E-04 -1.44E-03 -1.81E-03 -2.25E-03 -2.25E-03 -3.34E-03 -4.44E-03 -5.47E-03 -6.64E-03 -7.74E-03 -8.85E-03 -8.84E-03 -1.10E-02 -1.32E-02 -1.54E-02 -1.75E-02 -1.97E-02 -2.19E-02 -2.41E-02 -2.63E-02 -2.85E-02 -3.07E-02 -3.06E-02 -2.85E-02 -2.63E-02 -2.41E-02 -2.19E-02 -1.97E-02 -1.76E-02 -1.54E-02 -1.32E-02 -1.10E-02 -8.80E-03 -8.79E-03 -7.70E-03 -6.61E-03 -5.52E-03 -4.42E-03 -3.34E-03 -2.35E-03 -2.24E-03 -1.35E-03 -9.50E-04 -4.72E-04 3.13E-06];
EmuPerG_16K  = Emu_16K/0.0017;
EmuPerG_RT = Emu_RT/0.0017;
Tesla_16K = FieldOe_16K/10000;
Tesla_RT = FieldOe_RT/10000;
TeslaResponse_16K = EmuPerG_16K*4*pi*10^(-4)*8.41;
TeslaResponse_RT = EmuPerG_RT*4*pi*10^(-4)*8.41;

%% Plotting

figure1 = figure;
subplot(1,2,1)
p1 = scatter(Tesla_16K, TeslaResponse_16K, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [100,100];
fields = linspace(-10,10);
fun16kho = @(x,Tesla_16K)x(1)*(coth(x(2)*Tesla_16K+1E-8)-1./(x(2)*Tesla_16K+ 1E-8)); %langevin fit
fo = fitoptions('Method','NonlinearLeastSquares',...
               'Lower',[2.5,0],...
               'Upper',[2.9,Inf],...
               'StartPoint',[2.65,1]);
ft = fittype('a*(coth(b*x+1E-8)-1./(b*x+ 1E-8))','options',fo);
% Perform nonlinear fitting
[fitobject16K,gof,output]=fit(Tesla_16K.',TeslaResponse_16K.',ft)
% Extract coefficients for plotting
ho16kx1 = coeffvalues(fitobject16K)


p4 = plot(fields, fun16kho(ho16kx1, fields));
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

subplot(1,2,2)
p1 = scatter(Tesla_RT, TeslaResponse_RT, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [100,100];
fields = linspace(-10,10);
funRTho = @(x,Tesla_RT)x(1)*(coth(x(2)*Tesla_RT+1E-8)-1./(x(2)*Tesla_RT+ 1E-8)); %langevin fit
% Perform nonlinear fitting
[fitobjectRT,gof,output]=fit(Tesla_RT.',TeslaResponse_RT.',ft)
% Extract coefficients for plotting
hoRTx1 = coeffvalues(fitobjectRT)

p4 = plot(fields, funRTho(hoRTx1, fields));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

xlim([-10 10]);
ylim([-0.3 0.3]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.2 -0.1 0 0.1 0.2])
set(gca,'XTick',[-5 0 5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 17 5.3]) % make paper larger
print(gcf, 'magnet_temps.png', '-dpng', '-r300' ) % save 300 dpi file
