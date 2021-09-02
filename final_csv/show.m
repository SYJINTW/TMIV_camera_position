
filename = '6x6_camera_array.csv';
data = readmatrix(filename); % don't include the first row
rows = height(data); 


center_data = data(1:1, 2:7);
camera_data = data(2:rows, 2:7);

camera_x = camera_data(:,1:1);
camera_y = camera_data(:,2:2);
camera_z = camera_data(:,3:3);

% show the plot
plot3(camera_x, camera_y, camera_z ,'o', center_data(1), center_data(2), center_data(3), 'rx');
xlabel('X', 'FontSize', 16, 'Position',[0,-0.9,-0.75]);
ylabel('Y', 'FontSize', 16, 'Position',[0.4,0,-0.75]);
zlabel('Z', 'FontSize', 16, 'Position',[-0.35,-0.8,0]);

% for i=1:rows-1
%     text(camera_x(i), camera_y(i)-0.04, camera_z(i)-0.06, strcat('v',num2str(i-1))); 
% end

xlim([-0.3 0.3])
ylim([-0.7 0.7])
zlim([-0.7 0.7])
set(gca,'XTick',[-2:0.2:2]) 
set(gca,'YTick',[-2:0.2:2]) 
set(gca,'ZTick',[-2:0.2:2])
view(45,20)
grid on;

