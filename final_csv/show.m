
data = readmatrix('18x2_camera_array.csv'); % don't include the first row

rows = height(data); 

center_data = data(1:1, 2:7)
camera_data = data(2:rows, 2:7)

camera_x = camera_data(:,1:1);
camera_y = camera_data(:,2:2);
camera_z = camera_data(:,3:3);

x = center_data(1)
y = center_data(2)
z = center_data(3)

plot3(camera_x, camera_y, camera_z ,'o', center_data(1), center_data(2), center_data(3), 'r.')
grid on


