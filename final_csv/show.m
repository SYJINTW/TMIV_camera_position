
filename = '12x3_camera_array.csv';
data = readmatrix(filename); % don't include the first row
rows = height(data); 


center_data = data(1:1, 2:7);
camera_data = data(2:rows, 2:7);

camera_x = camera_data(:,1:1);
camera_y = camera_data(:,2:2);
camera_z = camera_data(:,3:3);

% show the plot
plot3(camera_x, camera_y, camera_z ,'o', 'MarkerSize', 8, 'MarkerFace', 'm', 'MarkerEdgeColor','b', 'MarkerFaceColor','b');
hold on
plot3(center_data(1), center_data(2), center_data(3), 'r^', 'MarkerSize', 12, 'MarkerFace', 'm', 'MarkerFaceColor','r')

% quiver3(0,-0.5,-0.5,0.35,0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,0.5,-0.5,0.35,0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,0.5,0.5,0.35,0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,-0.5,0.5,0.35,0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,-0.5,-0.5,0,1.0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0.35,-0.5,-0.5,0,1.0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,-0.5,0.5,0,1.0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0.35,-0.5,0.5,0,1.0,0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,-0.5,-0.5,0,0,1.0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0.35,-0.5,-0.5,0,0,1.0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0,0.5,-0.5,0,0,1.0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0.35,0.5,-0.5,0,0,1.0,1,'black', 'MarkerFace', 'm' ,'LineWidth',1.5,'ShowArrowHead','off');
% quiver3(0.2,0,0,-0.03,0,0.05,1,'r','LineWidth',2,'ShowArrowHead','off');
% quiver3(0.2,0,0,-0.03,0,-0.05,1,'r','LineWidth',2,'ShowArrowHead','off');


hold off
% xlabel('X', 'FontSize', 14, 'Position',[0.2,-0.7,-0.6], 'Rotation', 0);
% ylabel('Y', 'FontSize', 14, 'Position',[0.6,0,-0.6], 'Rotation', 0);
% zlabel('Z', 'FontSize', 14, 'Position',[-0.1,-0.8,0], 'Rotation', 0);

% for i=1:rows-1
%     text(camera_x(i), camera_y(i)-0.04, camera_z(i)-0.06, strcat('v',num2str(i-1))); 
% end


% view(60,15)


set(gca,'FontSize',16)
set(gca, 'FontName', 'Times New Roman');
set(gca,'TickDir','out')

% set limit
xlim([-0.1 0.5])
ylim([-0.7 0.7])
zlim([-0.7 0.7])
% set tick
set(gca,'XTick',[-2:0.2:2]) 
set(gca,'YTick',[-2:0.2:2]) 
set(gca,'ZTick',[-2:0.2:2])
% set xlabel
set(get(gca, 'xlabel'), 'interpreter', 'latex');
set(get(gca, 'xlabel'), 'FontName', 'Times New Roman');
set(get(gca, 'xlabel'), 'FontSize', 20);
set(get(gca, 'xlabel'), 'string', 'X');
set(get(gca, 'xlabel'), 'Position',[0.2,-1,-0.75]);
set(get(gca, 'xlabel'), 'Rotation', 0);
% set ylabel
set(get(gca, 'ylabel'), 'interpreter', 'latex');
set(get(gca, 'ylabel'), 'FontName', 'Times New Roman');
set(get(gca, 'ylabel'), 'FontSize', 20);
set(get(gca, 'ylabel'), 'string', 'Y');
set(get(gca, 'ylabel'), 'Position',[0.6,0,-0.8]);
set(get(gca, 'ylabel'), 'Rotation', 0);
% set zlabel
set(get(gca, 'zlabel'), 'interpreter', 'latex');
set(get(gca, 'zlabel'), 'FontName', 'Times New Roman');
set(get(gca, 'zlabel'), 'FontSize', 20);
set(get(gca, 'zlabel'), 'string', 'Z');
set(get(gca, 'zlabel'), 'Position',[-0.1,-.95,0]);
set(get(gca, 'zlabel'), 'Rotation', 0);
% set view direction
view(60,15);

set(legend(), 'interpreter', 'latex');
set(legend(), 'FontName', 'Times New Roman');
set(legend(), 'FontSize', 16);
legend('Camera', 'Center');
set(gcf, 'WindowStyle', 'normal');
% set(gca, 'Unit', 'inches');
% set(gca, 'Position', [.65 .65 4.6 3.125]);
% set(gcf, 'Unit', 'inches');
% set(gcf, 'Position', [0.25 2.5 5.5 4.05]);
grid on;

