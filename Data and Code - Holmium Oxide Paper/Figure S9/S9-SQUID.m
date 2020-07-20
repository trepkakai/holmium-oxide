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
MarkerSize=6;
LineWidth=2.5;
PlotLineWidth=3;
MarkerLineWidth=2;

%% Define the range of fields over which to plot
Tlow = linspace(7,67.8);
Thigh = linspace(67.8,297);
funlow = @(x)(x*.157./(12.57E-07));
funhigh = @(x)(722./(x*(12.57E-07)));

p1 = plot(Tlow, funlow(Tlow));
set(p1,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);
hold all
p2 = plot(Thigh, funhigh(Thigh));
set(p2,'Color',DefaultBlue,'LineWidth',PlotLineWidth,'MarkerFaceColor',DefaultBlue,'Markersize',MarkerSize);

xlim([7 297]);
ylim([0 1E7]);
set(gca,'FontSize',20,'LineWidth',LineWidth);
set(gca,'YTick',[2E6 4E6 6E6 8E6 1E7])
set(gca,'XTick',[7 100 200 297])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
pbaspect([1.618 1 1])

xlabel('Temperature (K)','Fontsize',22);
ylabel('E_{lin} (J/m^3)','Fontsize',22);

% Save the result
set(fh,'Units','Inches');
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 13.6 8]) % make paper larger
print(gcf, 'maxlinfig.png', '-dpng', '-r300' ) % save 300 dpi file
