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
FieldOe = [7.00E+04 6.50E+04 6.00E+04 5.50E+04 5.00E+04 4.50E+04 4.00E+04 3.50E+04 3.00E+04 2.50E+04 2.00E+04 2.00E+04 1.75E+04 1.50E+04 1.25E+04 1.00E+04 7.50E+03 5.00E+03 5.00E+03 4.00E+03 3.00E+03 2.00E+03 1.00E+03 0.00E+00 0.00E+00 -1.00E+03 -2.00E+03 -3.00E+03 -4.00E+03 -5.00E+03 -5.00E+03 -7.50E+03 -1.00E+04 -1.25E+04 -1.50E+04 -1.75E+04 -2.00E+04 -2.00E+04 -2.50E+04 -3.00E+04 -3.50E+04 -4.00E+04 -4.50E+04 -5.00E+04 -5.50E+04 -6.00E+04 -6.50E+04 -7.00E+04];
ResponseEmu1 = [-3.00681E-03 -2.78443E-03 -2.56455E-03 -2.33923E-03 -2.09163E-03 -1.89563E-03 -1.67799E-03 -1.46268E-03 -1.24585E-03 -1.02743E-03 -8.13786E-04 -8.10777E-04 -7.07645E-04 -6.00184E-04 -4.93818E-04 -3.98615E-04 -2.98439E-04 -1.94253E-04 -1.92100E-04 -1.53751E-04 -1.16723E-04 -7.74990E-05 -3.61501E-05 4.16601E-07 2.23454E-06 3.61988E-05 7.38717E-05 1.13509E-04 1.55006E-04 1.94653E-04 1.91916E-04 2.97614E-04 3.94045E-04 5.02426E-04 6.05660E-04 7.09359E-04 8.16009E-04 8.11921E-04 1.02905E-03 1.24530E-03 1.45963E-03 1.67619E-03 1.89640E-03 2.11901E-03 2.33993E-03 2.56294E-03 2.78282E-03 3.00790E-03];
ResponseEmu2 = [-3.006890E-03 -2.772266E-03 -2.544597E-03 -2.322460E-03 -2.100453E-03 -1.879041E-03 -1.661694E-03 -1.452203E-03 -1.228122E-03 -1.011949E-03 -8.001467E-04 -8.091077E-04 -6.964782E-04 -5.916780E-04 -4.888293E-04 -3.866113E-04 -2.905297E-04 -1.874647E-04 -1.900832E-04 -1.481523E-04 -1.111565E-04 -6.918887E-05 -3.322560E-05 2.623062E-06 -4.698300E-06 3.005939E-05 7.036859E-05 1.078524E-04 1.482081E-04 1.839545E-04 1.895407E-04 2.838789E-04 3.915442E-04 4.887256E-04 5.931758E-04 6.979015E-04 8.016931E-04 8.081026E-04 1.014166E-03 1.234017E-03 1.443046E-03 1.662621E-03 1.881848E-03 2.100646E-03 2.323149E-03 2.550367E-03 2.771036E-03 3.002886E-03];
DiffHoT = abs(ResponseEmu1-ResponseEmu2)*4*3.1415*0.0001/(0.000654/(5*9));
FieldT = FieldOe./10000;

%% Plotting
figure1 = figure;
subplot(1,3,1)
p1 = scatter(FieldT, ResponseEmu1, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.7);
hold all
p2 = scatter(FieldT, ResponseEmu2, sz, '^');
set(p2,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.7);
hold all

fields = linspace(-10,10);
funlin = @(x,FieldT)(x(1)*FieldT+x(2)); 
fo = fitoptions('Method','NonLinearLeastSquares',...
               'Lower',[-1,-0.5],...
               'Upper',[1,0.5],...
               'StartPoint',[0,0]);
ft = fittype('a*x+b','options',fo);
% Perform nonlinear fitting
[fitobject,gof,output]=fit(FieldT.',ResponseEmu1.',ft)
% Extract coefficients for plotting
vals = coeffvalues(fitobject)
p3 = plot(fields, funlin(vals, fields));
set(p3,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p3,'bottom')

box on

% legend
leg = legend('linear fit','H down-ramp','H up-ramp');
set(leg,'Location', 'northeast','Fontsize',22)
set(leg, 'Box', 'off')

%label stuff
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[-5 0 5])
set(gca, 'YTick', [-0.004 -0.002 0 0.002 0.004])
pbaspect([1 1.618 1])
xlim([-10 10])
ylim([-0.005 0.005])
xlabel('\mu_0H (T)','Fontsize',22); 
ylabel('M (emu)','Fontsize',22);

subplot(1,3,2)
p1 = scatter(FieldT, abs(ResponseEmu1-ResponseEmu2), sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.7);
box on

set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[-5 0 5])
set(gca, 'YTick', [0 1E-5 2E-5])
pbaspect([1 1.618 1])
xlim([-10 10])
ylim([0 2E-5])
xlabel('\mu_0H (T)','Fontsize',22); 
ylabel('Uncertainty in M_{sapphire} (emu)','Fontsize',22);


subplot(1,3,3)
p1 = scatter(FieldT, log10(DiffHoT), sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0,'MarkerEdgeAlpha',0.7);
box on

set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'XTick',[-5 0 5])
set(gca, 'YTick', [-4 -3.5 -3 -2.5])
pbaspect([1 1.618 1])
xlim([-10 10])
ylim([-4 -2.5])
xlabel('\mu_0H (T)','Fontsize',22); 
ylabel('Corresponding uncertainty in \mu_0M_{Ho} (log T)','Fontsize',22);


%% Exporting
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 17 7.2]) % make paper larger
print(gcf, 'sapphiredraft.png', '-dpng', '-r300' ) % save 300 dpi file
