function multiplot

dir; %besser w�re unabh�ngig vom cd ein dir ausw�hlen zu k�nnen
d = dir('*.mat');

for i=1:length(d);
    filename = d(i).name;
    load(d(i).name);
    analysis
    figure;
    idx = find(analysis.framedone);
         plot(idx,analysis.amp(idx));
         set(gca,'XLim',[1 7000],'YLim',[0, 10]);
         set(gcf,'Units','pixel','Position',[1 400 1000 300]);
         set(gca,'Units','normalized','Position',[.05 .1 .9 .8]);
end

