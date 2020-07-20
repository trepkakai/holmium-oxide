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
sz = 30;

%% Data imports
FieldOe_4K = [0.00E+00 2.00E+02 4.00E+02 6.00E+02 8.00E+02 1.00E+03 1.20E+03 1.40E+03 1.60E+03 1.80E+03 2.00E+03 2.20E+03 2.40E+03 2.60E+03 2.80E+03 3.00E+03 3.20E+03 3.40E+03 3.60E+03 3.80E+03 4.00E+03 4.20E+03 4.40E+03 4.80E+03 5.00E+03 5.00E+03 4.80E+03 4.60E+03 4.40E+03 4.20E+03 3.80E+03 3.60E+03 3.40E+03 3.20E+03 3.00E+03 2.60E+03 2.40E+03 2.20E+03 2.00E+03 1.80E+03 1.60E+03 1.40E+03 1.20E+03 1.00E+03 8.00E+02 6.00E+02 4.00E+02 2.00E+02 0.00E+00 -2.00E+02 -4.00E+02 -6.00E+02 -8.00E+02 -1.00E+03 -1.20E+03 -1.40E+03 -1.60E+03 -1.80E+03 -2.20E+03 -2.40E+03 -2.60E+03 -2.80E+03 -3.00E+03 -3.40E+03 -3.60E+03 -3.80E+03 -4.00E+03 -4.40E+03 -4.60E+03 -5.00E+03 -5.00E+03 -4.80E+03 -4.60E+03 -4.40E+03 -4.20E+03 -4.00E+03 -3.80E+03 -3.60E+03 -3.40E+03 -3.20E+03 -3.00E+03 -2.80E+03 -2.40E+03 -2.20E+03 -2.00E+03 -1.80E+03 -1.60E+03 -1.40E+03 -1.20E+03 -1.00E+03 -8.00E+02 -6.00E+02 -4.00E+02 -2.00E+02 0.00E+00];
EmuPerG_4K = [-0.005746102 0.875570909 2.597650303 3.909729091 5.301930909 6.598381818 7.943866667 9.276236364 10.61381212 11.99145455 13.13864848 14.44146061 15.78949697 17.04786061 18.33554545 19.6716303 21.14549697 22.13938788 23.34913939 24.68273939 26.05056364 27.44584242 28.90909697 31.96212121 33.3452303 33.41653333 32.13252121 30.8364 29.54143636 28.11646667 25.28000606 23.98767273 22.66634545 21.34778182 19.95773939 17.35264848 16.07572121 14.77832727 13.44186667 12.10322424 10.88869091 9.54930303 8.24730303 6.915357576 5.522249697 4.208040606 2.884522424 1.554439394 -0.035460188 -1.001398788 -2.946393333 -4.272564848 -5.548073333 -6.884993939 -8.192587879 -9.539860606 -10.84627879 -12.15370303 -14.69356364 -15.98935758 -17.34513333 -18.72028485 -20.0193697 -22.5262303 -23.84508485 -25.2248 -26.39886061 -29.2801697 -30.62636364 -33.47152727 -33.24907879 -31.9471697 -30.72011515 -29.45693333 -28.14771515 -26.53349091 -25.16450909 -24.07039394 -22.72832727 -21.4080303 -20.08504848 -18.78475758 -16.18511515 -14.76474545 -13.42630909 -12.15927879 -10.87810909 -9.612315152 -8.255569697 -6.975266667 -5.657236364 -4.300358788 -2.998577576 -1.648712121 -0.016689703];
FieldOe_16K = [0.00E+00 2.00E+02 4.00E+02 6.00E+02 8.00E+02 1.00E+03 1.20E+03 1.40E+03 1.60E+03 1.80E+03 2.00E+03 2.20E+03 2.40E+03 2.60E+03 2.80E+03 3.00E+03 3.20E+03 3.40E+03 3.60E+03 3.80E+03 4.00E+03 4.20E+03 4.40E+03 4.60E+03 4.80E+03 5.00E+03 5.00E+03 4.80E+03 4.60E+03 4.40E+03 4.20E+03 4.00E+03 3.80E+03 3.60E+03 3.40E+03 3.20E+03 3.00E+03 2.80E+03 2.60E+03 2.40E+03 2.20E+03 2.00E+03 1.80E+03 1.60E+03 1.40E+03 1.20E+03 1.00E+03 8.00E+02 4.00E+02 2.00E+02 0.00E+00 -2.00E+02 -4.00E+02 -6.00E+02 -8.00E+02 -1.00E+03 -1.20E+03 -1.40E+03 -1.60E+03 -1.80E+03 -2.00E+03 -2.20E+03 -2.40E+03 -2.60E+03 -2.80E+03 -3.00E+03 -3.20E+03 -3.40E+03 -3.80E+03 -4.00E+03 -4.20E+03 -4.40E+03 -5.00E+03 -5.00E+03 -4.80E+03 -4.60E+03 -4.40E+03 -4.20E+03 -4.00E+03 -3.80E+03 -3.60E+03 -3.40E+03 -3.20E+03 -3.00E+03 -2.80E+03 -2.60E+03 -2.40E+03 -2.20E+03 -2.00E+03 -1.80E+03 -1.60E+03 -1.40E+03 -1.20E+03 -1.00E+03 -8.00E+02 -6.00E+02 -4.00E+02 -2.00E+02 0.00E+00];
EmuPerG_16K = [-0.0024738 0.688237576 1.711332121 2.537712727 3.342912121 4.158624848 4.972833333 5.782838182 6.586612121 7.329339394 8.148660606 8.962351515 9.788309091 10.69702424 11.52189697 12.2557697 13.0453697 13.89594545 14.67716364 15.49197576 16.32604848 17.33136364 18.03398788 18.83495152 19.57940606 20.35084242 20.36501818 19.55118182 18.74101212 17.91606061 17.09345455 16.31066667 15.65422424 14.85041212 13.86894545 13.22873333 12.36259394 11.50329091 10.67740606 9.813260606 8.954363636 8.160636364 7.304769697 6.623721212 5.703045455 4.918375758 4.109582424 3.290398182 1.652984242 0.640182424 -0.025377442 -0.700792727 -1.71582303 -2.551888485 -3.398673939 -4.249184242 -4.958243636 -5.850232727 -6.612927273 -7.425757576 -8.219121212 -9.005193939 -9.837957576 -10.71927273 -11.48576364 -12.32337576 -13.14089091 -14.01330303 -15.66641212 -16.57895152 -17.42741212 -18.3259697 -20.90386667 -20.85944242 -20.03404848 -19.20852727 -18.37520606 -17.54655758 -16.5284 -15.62006667 -14.76960606 -13.8226 -13.00307273 -12.15664848 -11.30898788 -10.44114545 -9.78749697 -9.008872727 -8.155618182 -7.326054545 -6.615084848 -5.787071515 -4.973312121 -4.153569697 -3.330787273 -2.515504242 -1.693529091 -0.716421212 0.003526111];
FieldOe_RT = [0.00E+00 2.00E+02 4.00E+02 6.00E+02 8.00E+02 1.00E+03 1.20E+03 1.40E+03 1.60E+03 1.80E+03 2.00E+03 2.20E+03 2.40E+03 2.60E+03 2.80E+03 3.00E+03 3.20E+03 3.40E+03 3.60E+03 3.80E+03 4.00E+03 4.20E+03 4.40E+03 4.60E+03 4.80E+03 5.00E+03 5.00E+03 4.80E+03 4.60E+03 4.40E+03 4.20E+03 4.00E+03 3.80E+03 3.60E+03 3.40E+03 3.20E+03 3.00E+03 2.80E+03 2.60E+03 2.40E+03 2.20E+03 2.00E+03 1.80E+03 1.60E+03 1.40E+03 1.20E+03 1.00E+03 8.00E+02 6.00E+02 4.00E+02 2.00E+02 0.00E+00 -2.00E+02 -4.00E+02 -6.00E+02 -8.00E+02 -1.00E+03 -1.20E+03 -1.40E+03 -1.60E+03 -1.80E+03 -2.00E+03 -2.20E+03 -2.40E+03 -2.60E+03 -2.80E+03 -3.00E+03 -3.20E+03 -3.40E+03 -3.60E+03 -3.80E+03 -4.00E+03 -4.20E+03 -4.40E+03 -4.60E+03 -4.80E+03 -5.00E+03 -5.00E+03 -4.80E+03 -4.60E+03 -4.40E+03 -4.20E+03 -4.00E+03 -3.80E+03 -3.60E+03 -3.40E+03 -3.20E+03 -3.00E+03 -2.80E+03 -2.60E+03 -2.40E+03 -2.20E+03 -2.00E+03 -1.80E+03 -1.60E+03 -1.40E+03 -1.20E+03 -1.00E+03 -8.00E+02 -6.00E+02 -4.00E+02 -2.00E+02 0.00E+00];
EmuPerG_RT = [-0.002075633 0.048233655 0.108421576 0.148294364 0.198275758 0.248112424 0.297971091 0.348758182 0.397910545 0.447574182 0.497701515 0.566531879 0.596950727 0.645982424 0.697585455 0.751099394 0.798144242 0.846853939 0.897551515 0.946677576 0.99708303 1.046801818 1.098341818 1.146275152 1.198548485 1.227147879 1.242954545 1.197872727 1.147883636 1.092252727 1.041589697 0.991254545 0.941855758 0.89216303 0.841253333 0.789903636 0.740233333 0.690027879 0.639476364 0.590102303 0.539429273 0.488963636 0.438745091 0.388392545 0.338202606 0.289232727 0.237924667 0.195812182 0.137938848 0.088845939 0.038168758 -0.009646158 -0.060777939 -0.11119503 -0.160391152 -0.220271697 -0.260885394 -0.313059273 -0.367904667 -0.410267818 -0.464109818 -0.516779333 -0.562727394 -0.613544242 -0.661658788 -0.711672727 -0.761241818 -0.812075152 -0.855941818 -0.903997576 -0.955690303 -1.008909697 -1.041724848 -1.105115758 -1.154804848 -1.198897576 -1.246989697 -1.247524242 -1.198201818 -1.147444242 -1.09736 -1.046746061 -0.99644303 -0.945213939 -0.895031515 -0.845567273 -0.793693939 -0.744961818 -0.693314545 -0.640965455 -0.591677818 -0.540650909 -0.487808061 -0.439705636 -0.389409758 -0.340294424 -0.289770242 -0.239324848 -0.189929212 -0.135251636 -0.090036848 -0.051011994 0.012988364];

Tesla_4K = FieldOe_4K/10000;
Tesla_16K = FieldOe_16K/10000;
Tesla_RT = FieldOe_RT/10000;

TeslaResponse_4K = EmuPerG_4K*4*pi*10^(-4)*8.41;
TeslaResponse_16K = EmuPerG_16K*4*pi*10^(-4)*8.41;
TeslaResponse_RT = EmuPerG_RT*4*pi*10^(-4)*8.41;

%% Plotting

figure1 = figure;
subplot(3,2,1)
p1 = scatter(Tesla_4K, TeslaResponse_4K, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [100,100];
fields = linspace(-10,10);
fun4kho = @(x,Tesla_4K)(x(1)*Tesla_4K); %linear fit
[ho4kx1,ho4kresnorm,~,ho4kexitflag,ho4koutput]=lsqcurvefit(fun4kho,x0,Tesla_4K,TeslaResponse_4K);

p4 = plot(fields, fun4kho(ho4kx1, fields));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

xlim([-0.5 0.5]);
ylim([-0.39 0.39]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.3 0 0.3])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

%axis([1 10^5 10^-3 10],'square');
% pbaspect([1 1 1]) %pbaspect sets aspect ratio
xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

subplot(3,2,3)
p1 = scatter(Tesla_16K, TeslaResponse_16K, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [100,100];
fields = linspace(-10,10);
fun16kho = @(x,Tesla_16K)(x(1)*Tesla_16K); %linear fit
[ho16kx1,ho16kresnorm,~,ho16kexitflag,ho16koutput]=lsqcurvefit(fun16kho,x0,Tesla_16K,TeslaResponse_16K);

p4 = plot(fields, fun16kho(ho16kx1, fields));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

xlim([-0.5 0.5]);
ylim([-0.24 0.24]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.2 0 0.2])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

subplot(3,2,5)
p1 = scatter(Tesla_RT, TeslaResponse_RT, sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

x0 = [100,100];
fields = linspace(-10,10);
funRTho = @(x,Tesla_RT)(x(1)*Tesla_RT); %linear fit
[hoRTx1,hoRTresnorm,~,hoRTexitflag,hoRToutput]=lsqcurvefit(funRTho,x0,Tesla_RT,TeslaResponse_RT);

p4 = plot(fields, funRTho(hoRTx1, fields));
set(p4,'Color',Black,'LineWidth',PlotLineWidth,'MarkerFaceColor',Black,'Markersize',MarkerSize);
% Put fit on bottom
uistack(p1,'top')

xlim([-0.5 0.5]);
ylim([-0.013 0.013]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.01 0 0.01])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

%axis([1 10^5 10^-3 10],'square');
% pbaspect([1 1 1]) %pbaspect sets aspect ratio
xlabel('\mu_0H (T)','Fontsize',22);
ylabel('\mu_0M (T)','Fontsize',22);

%test
subplot(3,2,2)
p1 = scatter(Tesla_4K(1:25), (TeslaResponse_4K(1:25)-fun4kho(ho4kx1, Tesla_4K(1:25))), sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p2 = scatter(Tesla_4K(71:95), (TeslaResponse_4K(71:95)-fun4kho(ho4kx1, Tesla_4K(71:95))), sz, 'o');
set(p2,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p3 = scatter(Tesla_4K(26:70), (TeslaResponse_4K(26:70)-fun4kho(ho4kx1, Tesla_4K(26:70))), sz, '^');
set(p3,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on
%1:25, 26:70, 71:95

xlim([-0.5 0.5]);
ylim([-0.006 0.006]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.006 -0.004 -0.002 0 0.002 0.004 0.006])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('Residuals (T)','Fontsize',22);


%test
subplot(3,2,4)
p1 = scatter(Tesla_16K(1:25), (TeslaResponse_16K(1:25)-fun16kho(ho16kx1, Tesla_16K(1:25))), sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p2 = scatter(Tesla_16K(26:70), (TeslaResponse_16K(26:70)-fun16kho(ho16kx1, Tesla_16K(26:70))), sz, '^');
set(p2,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p3 = scatter(Tesla_16K(71:95), (TeslaResponse_16K(71:95)-fun16kho(ho16kx1, Tesla_16K(71:95))), sz, 'o');
set(p3,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on

% NOTE: Blue is for ramping up field, orange for ramping down the field

xlim([-0.5 0.5]);
ylim([-0.004 0.004]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.004 -0.002 0 0.002 0.004])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('Residuals (T)','Fontsize',22);



%test
subplot(3,2,6)
p1 = scatter(Tesla_RT(1:25), (TeslaResponse_RT(1:25)-funRTho(hoRTx1, Tesla_RT(1:25))), sz, 'o');
set(p1,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p2 = scatter(Tesla_RT(26:70), (TeslaResponse_RT(26:70)-funRTho(hoRTx1, Tesla_RT(26:70))), sz, '^');
set(p2,'MarkerEdgeColor',DefaultOrange,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
p3 = scatter(Tesla_RT(71:95), (TeslaResponse_RT(71:95)-funRTho(hoRTx1, Tesla_RT(71:95))), sz, 'o');
set(p3,'MarkerEdgeColor',DefaultBlue,'MarkerFaceColor',White,'Linewidth',MarkerLineWidth,'MarkerFaceAlpha',0);
hold all
box on
%1:25, 26:70, 71:95

xlim([-0.5 0.5]);
ylim([-0.00023 0.00023]);
set(gca,'FontSize',22,'LineWidth',LineWidth);
set(gca,'YTick',[-0.0002 -0.0001 0 0.0001 0.0002])
set(gca,'XTick',[-0.5 0 0.5])
pbaspect([1.618 1 1])
fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 

xlabel('\mu_0H (T)','Fontsize',22);
ylabel('Residuals (T)','Fontsize',22);


fh = figure(1); % returns the handle to the figure object
set(fh, 'color', 'white'); % sets the color to white 
set(gcf, 'PaperPosition', [0 0 17 16]) % make paper larger
print(gcf, 'detailedsus.png', '-dpng', '-r300' ) % save 300 dpi file