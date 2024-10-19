function plot_a1(handles,T,a,alpha,d,theta)
    x = 0;
    y = 0;
    L = a(1);
    W = 70;
    H1 = d(1) + 20;
    H2 = d(1) - 20;
    opacity = str2double(handles.Opac_val.String);
    Yaw = theta(1)-pi/2;

    fill3(handles.axes1,[x-W/2*cos(Yaw),x+W/2*cos(Yaw),x-L*sin(Yaw)+W/2*cos(Yaw),x-L*sin(Yaw)-W/2*cos(Yaw)],[y-W/2*sin(Yaw), y+W/2*sin(Yaw), y+L*cos(Yaw)+W/2*sin(Yaw), y+L*cos(Yaw)-W/2*sin(Yaw)],[H2, H2, H2, H2 ],[0, 26, 255]/255,'FaceAlpha',opacity)
    fill3(handles.axes1,[x-W/2*cos(Yaw),x+W/2*cos(Yaw),x-L*sin(Yaw)+W/2*cos(Yaw),x-L*sin(Yaw)-W/2*cos(Yaw)],[y-W/2*sin(Yaw), y+W/2*sin(Yaw), y+L*cos(Yaw)+W/2*sin(Yaw), y+L*cos(Yaw)-W/2*sin(Yaw)],[H1, H1, H1, H1 ],[0, 26, 255]/255,'FaceAlpha',opacity)
    fill3(handles.axes1,[x+W/2*cos(Yaw), x+W/2*cos(Yaw)-L*sin(Yaw), x+W/2*cos(Yaw)-L*sin(Yaw), x+W/2*cos(Yaw)],[y+W/2*sin(Yaw), y+L*cos(Yaw)+W/2*sin(Yaw), y+L*cos(Yaw)+W/2*sin(Yaw), y+W/2*sin(Yaw)],[H2, H2, H1, H1 ],[0, 26, 255]/255,'FaceAlpha',opacity)
    fill3(handles.axes1,[x-W/2*cos(Yaw), x-W/2*cos(Yaw)-L*sin(Yaw), x-W/2*cos(Yaw)-L*sin(Yaw), x-W/2*cos(Yaw)],[y-W/2*sin(Yaw), y+L*cos(Yaw)-W/2*sin(Yaw), y+L*cos(Yaw)-W/2*sin(Yaw), y-W/2*sin(Yaw)],[H2, H2, H1, H1 ],[0, 26, 255]/255,'FaceAlpha',opacity)
end