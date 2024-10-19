function [q_max,my_alpha,my_beta,x_sign,y_sign,z_sign,p_x_old,p_y_old,p_z_old]= PathPlanning(handles)
%%
%Linear interpolation

%%
    % Old value
    p_x_old = str2double(get(handles.Pos_X,'String'));
    p_y_old = str2double(get(handles.Pos_Y,'String'));
    p_z_old = str2double(get(handles.Pos_Z,'String'));

    % desired value
    p_x = str2double(get(handles.Pos_X_Next,'String'));
    p_y = str2double(get(handles.Pos_Y_Next,'String'));
    p_z = str2double(get(handles.Pos_Z_Next,'String'));

    % calc sign
    x_sign = calc_sign(p_x,p_x_old);
    y_sign = calc_sign(p_y,p_y_old);
    z_sign = calc_sign(p_z,p_z_old);

%%
    % cal distance
    q_max = ((p_x - p_x_old)^2+(p_y - p_y_old)^2+(p_z - p_z_old)^2)^(1/2);
    
%%
    % cal 3d vector parameters
    if p_y - p_y_old == 0
        my_alpha=0;
    else
    my_alpha = atan((p_y - p_y_old)/(p_x-p_x_old));
    end
    
    if (p_z - p_z_old) >= 0
    my_beta = atan(sqrt((p_x-p_x_old)^2+(p_y-p_y_old)^2)/(p_z - p_z_old));
    else
        my_beta = atan(sqrt((p_x-p_x_old)^2+(p_y-p_y_old)^2)/(p_z - p_z_old))+pi;
    end
end