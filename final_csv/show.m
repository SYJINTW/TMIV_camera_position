
filename = '6x6_camera_array.csv';
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
plot3(center_data(1), center_data(2), center_data(3), 'rx', 'MarkerSize', 12)
% quiver3(0,0,0,0.2,0,0,1,'r','marker', 'x', 'MarkerFace', 'm' ,'LineWidth',2,'ShowArrowHead','off');
% quiver3(0.2,0,0,-0.03,0,0.05,1,'r','LineWidth',2,'ShowArrowHead','off');
% quiver3(0.2,0,0,-0.03,0,-0.05,1,'r','LineWidth',2,'ShowArrowHead','off');

% user box
% left
%

hold off
xlabel('X', 'FontSize', 14, 'Position',[0.2,-0.7,-0.6], 'Rotation', 0);
ylabel('Y', 'FontSize', 14, 'Position',[0.6,0,-0.6], 'Rotation', 0);
zlabel('Z', 'FontSize', 14, 'Position',[-0.1,-0.8,0], 'Rotation', 0);

% for i=1:rows-1
%     text(camera_x(i), camera_y(i)-0.04, camera_z(i)-0.06, strcat('v',num2str(i-1))); 
% end

xlim([-0.1 0.5])
ylim([-0.6 0.6])
zlim([-0.5 0.6])
set(gca,'XTick',[-2:0.2:2]) 
set(gca,'YTick',[-2:0.2:2]) 
set(gca,'ZTick',[-2:0.2:2])
view(60,15)
grid on;


