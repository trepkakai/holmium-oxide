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
MarkerLineWidth =2.5;

%% Data import - Roland XPS
time = [0 0.05 0.1 0.15 0.2 0.25 1.25 2.25 3.25 4.25 5.25 5.4 5.55 5.7 5.85 6 6.5 7 7.5 8 8.5 10 11.5 13 14.5 16 21 26 31 36 41 46 51 56 61 66];
ho4d = [22.2 29.5 30.2 32.8 30.7 33.8 32.1 32.7 33.9 33.7 33.2 32.9 33.7 33.1 33.9 34.2 33.6 35.8 32.6 33.9 32.9 35.1 34.9 33.5 34.3 32.4 34.6 32.5 28.4 25.9 12.0 2.0 0.5 0.3 0.3 0.1];
al2p = [2.1 0.0 1.1 0.0 0.1 0.0 1.4 0.8 0.9 0.0 0.0 0.0 0.0 0.9 0.7 3.0 0.0 0.0 1.1 1.8 0.9 0.0 2.5 1.7 1.3 0.9 0.0 0.0 4.3 6.5 22.5 32.7 34.0 34.4 34.3 34.4];
o1s = [75.7 70.5 67.7 67.1 69.2 66.2 66.5 66.4 65.1 66.3 66.8 67.1 66.3 66.1 65.4 61.4 66.4 64.2 66.3 64.3 66.2 64.9 62.6 64.8 64.4 66.6 65.4 67.5 67.3 67.6 65.5 65.3 65.5 65.3 65.4 65.5];

%% Plotting

figure1 = figure;
p1 = plot(time, ho4d/333*400, 'o');
set(p1,'Color',DefaultBlue,'LineWidth',MarkerLineWidth,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Markersize',MarkerSize);
hold all
p2 = plot(time, o1s/666*600, 's');
set(p2,'Color',DefaultLightBlue,'LineWidth',MarkerLineWidth,'MarkerEdgeColor',DefaultLightBlue,'MarkerFaceColor',White,'Markersize',MarkerSize);
hold all
p3 = plot(time, al2p/333*400, '^');
set(p3,'Color',DefaultGreen,'LineWidth',MarkerLineWidth,'MarkerEdgeColor',DefaultGreen,'MarkerFaceColor',White,'Markersize',MarkerSize);
hold all
T = linspace(0,20);
p0 = plot(T, mean(ho4d(3:26)/333*400)+T.*0);
set(p0,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
hold all
p01 = plot(T, mean(ho4d(3:26)/333*400)+std(ho4d(1:26)/333*400)+T.*0,'--');
set(p01,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
hold all
p02 = plot(T, mean(ho4d(3:26)/333*400)-std(ho4d(1:26)/333*400)+T.*0,'--');
set(p02,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
p00 = plot(T, mean(o1s(3:26)/666*600)+T.*0);
set(p00,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
hold all
p001 = plot(T, mean(o1s(3:26)/666*600)+std(ho4d(1:26)/666*600)+T.*0,'--');
set(p001,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
hold all
p002 = plot(T, mean(o1s(3:26)/666*600)-std(ho4d(1:26)/666*600)+T.*0,'--');
set(p002,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);

set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[0 20 40 60 80 100])
set(gca,'XTick',[0 20 40 60])
xlim([0,60])
ylim([0,100])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

leg = legend('Ho4d', 'O1s', 'Al2p');
set(leg,'Location', 'northwest','Fontsize',22)
set(leg, 'Box', 'off')
xlabel('Sputter time (min)','Fontsize',22); %sputter time in minutes at 20 nm/min
ylabel('Atomic concentration (%)','Fontsize',22);

uistack(p1,'top')
uistack(p2,'top')
uistack(p3,'top')

pbaspect([1 1.618 1])

fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 8 8]) % make paper larger
print(gcf, 'xpsdraft.png', '-dpng', '-r300' ) % save 300 dpi file
