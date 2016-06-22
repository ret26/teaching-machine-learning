h = figure(1);

x = -7:0.01:7;
f = 2*exp(-(x+1).^2/2)+exp(-(x-2).^2/2);
g = cos(x/5-1)+1./(1+exp(-x));
hold off
plot(x,f,'r-','LineWidth',2)
hold on
plot(x,g,'k','LineWidth',2)
set(gca,'FontSize',16)
set(gca,'XTickLabel',[]);
grid
set(h,'PaperPosition',[0.25 2.5 8 3])
axis([-7 7 -1 2.5])
print -depsc mc0.eps

h = figure(2);
hold off
plot(x,f,'r-','LineWidth',2)
hold on
plot(x,g,'k','LineWidth',2)
i=101:100:1301;
plot(x(i),f(i),'ro','MarkerSize',9)
plot(x(i),g(i),'ko','MarkerSize',9)
set(gca,'FontSize',16)
set(gca,'XTickLabel',[]);
grid
set(h,'PaperPosition',[0.25 2.5 8 3])
axis([-7 7 -1 2.5])
print -depsc mc1.eps

h = figure(3);
hold off
plot(x,f,'r-','LineWidth',2)
hold on
plot(x,g,'k','LineWidth',2)
plot(x,2.4*exp(-x.^2/8),'b','LineWidth',2)
set(gca,'FontSize',16)
legend('p(x)', '\phi(x)', 'c q(x)',2)
set(gca,'XTickLabel',[]);
grid
set(h,'PaperPosition',[0.25 2.5 8 3])
axis([-7 7 -1 2.5])
print -depsc mc2.eps

h = figure(4);
hold off
plot(x,f,'r-','LineWidth',2)
hold on
plot(x,g,'k','LineWidth',2)
plot(x,1.73*exp(-x.^2/6),'b','LineWidth',2)
set(gca,'FontSize',16)
legend('p(x)', '\phi(x)', 'q(x)',2)
set(gca,'XTickLabel',[]);
grid
set(h,'PaperPosition',[0.25 2.5 8 3])
axis([-7 7 -1 2.5])
print -depsc mc3.eps

