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
MarkerLineWidth=2.5;
LineWidth=2.5;
PlotLineWidth=3;
sz = 49;

%% Data imports
Tesla_4K = [0.00E+00 1.00E-01 2.00E-01 3.00E-01 4.00E-01 5.00E-01 5.00E-01 7.50E-01 1.00E+00 1.25E+00 1.50E+00 1.75E+00 2.00E+00 2.00E+00 2.50E+00 3.00E+00 3.50E+00 4.00E+00 4.50E+00 5.00E+00 5.50E+00 6.00E+00 6.50E+00 7.00E+00 7.00E+00 6.50E+00 6.00E+00 5.50E+00 5.00E+00 4.50E+00 4.00E+00 3.50E+00 3.00E+00 2.50E+00 2.00E+00 2.00E+00 1.75E+00 1.50E+00 1.25E+00 1.00E+00 7.50E-01 5.00E-01 5.00E-01 4.00E-01 3.00E-01 2.00E-01 1.00E-01 0.00E+00 0.00E+00 -1.00E-01 -2.00E-01 -3.00E-01 -4.00E-01 -5.00E-01 -5.00E-01 -7.50E-01 -1.00E+00 -1.25E+00 -1.50E+00 -1.75E+00 -2.00E+00 -2.00E+00 -2.50E+00 -3.00E+00 -3.50E+00 -4.00E+00 -4.50E+00 -5.00E+00 -5.50E+00 -6.00E+00 -6.50E+00 -7.00E+00 -7.00E+00 -6.50E+00 -6.00E+00 -5.50E+00 -5.00E+00 -4.50E+00 -4.00E+00 -3.50E+00 -3.00E+00 -2.50E+00 -2.00E+00 -2.00E+00 -1.75E+00 -1.50E+00 -1.25E+00 -1.00E+00 -7.50E-01 -5.00E-01 -5.00E-01 -4.00E-01 -3.00E-01 -2.00E-01 -1.00E-01 0.00E+00];
TeslaResponse_4K = [9.76E-04 9.09E-02 1.79E-01 2.67E-01 3.50E-01 4.30E-01 4.30E-01 6.10E-01 7.66E-01 9.00E-01 1.01E+00 1.12E+00 1.28E+00 1.30E+00 1.46E+00 1.60E+00 1.71E+00 1.79E+00 1.89E+00 1.98E+00 2.01E+00 2.03E+00 2.04E+00 2.0902E+00 2.1034E+00 2.08E+00 2.06E+00 2.05E+00 2.01E+00 1.91E+00 1.82E+00 1.73E+00 1.61E+00 1.48E+00 1.32E+00 1.32E+00 1.12E+00 1.03E+00 9.13E-01 7.78E-01 6.20E-01 4.37E-01 4.36E-01 3.55E-01 2.71E-01 1.82E-01 9.22E-02 -8.01E-04 -8.58E-04 -9.32E-02 -1.83E-01 -2.71E-01 -3.56E-01 -4.36E-01 -4.36E-01 -6.18E-01 -7.76E-01 -9.11E-01 -1.03E+00 -1.13E+00 -1.32E+00 -1.32E+00 -1.48E+00 -1.61E+00 -1.73E+00 -1.82E+00 -1.91E+00 -2.02E+00 -2.04E+00 -2.06E+00 -2.08E+00 -2.0920E+00 -2.0955E+00 -2.08E+00 -2.06E+00 -2.04E+00 -2.01E+00 -1.93E+00 -1.82E+00 -1.72E+00 -1.61E+00 -1.49E+00 -1.31E+00 -1.31E+00 -1.13E+00 -1.03E+00 -9.11E-01 -7.76E-01 -6.18E-01 -4.35E-01 -4.34E-01 -3.54E-01 -2.70E-01 -1.82E-01 -9.11E-02 8.07E-04];

%% Plotting
figure1 = figure;
p1 = scatter(Tesla_4K, TeslaResponse_4K, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [1,1];
fields = linspace(-10,10);
fun4kho = @(x,Tesla_4K)x(1)*(coth(x(2)*Tesla_4K+1E-8)-1./(x(2)*Tesla_4K+ 1E-8)); %langevin fit
[ho4kx1,ho4kresnorm,~,ho4kexitflag,ho4koutput]=lsqcurvefit(fun4kho,x0,Tesla_4K,TeslaResponse_4K);

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

% pbaspect([1 1 1]) %pbaspect sets aspect ratio
xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

%% Export
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 8.5 5.7]) % make paper larger
print(gcf, 'responseonfilm.png', '-dpng', '-r300' ) % save 300 dpi file