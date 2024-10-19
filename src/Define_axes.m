function Define_axes(handles)
    cla(handles.ax_q,'reset');
    grid(handles.ax_q,'on'); 
    hold(handles.ax_q,'on'); 
    y_label = sprintf('${%c}$','q');
    ylabel(handles.ax_q,y_label, 'Interpreter', 'LaTeX','fontsize',13);

    cla(handles.ax_qdot,'reset');
    grid(handles.ax_qdot,'on'); 
    hold(handles.ax_qdot,'on'); 
    y_label = sprintf('$\\dot{%c}$','q');
    ylabel(handles.ax_qdot,y_label, 'Interpreter', 'LaTeX','fontsize',13);

    cla(handles.ax_q2dot,'reset');
    grid(handles.ax_q2dot,'on'); 
    hold(handles.ax_q2dot,'on'); 
    xlabel(handles.ax_q2dot,'time(s)');
    y_label = sprintf('$\\ddot{%c}$','q');
    ylabel(handles.ax_q2dot,y_label, 'Interpreter', 'LaTeX','fontsize',13);
%---------------------------------------------------------------------------------------------------------

    cla(handles.ax_q_x,'reset');
    grid(handles.ax_q_x,'on');
    hold(handles.ax_q_x,'on');
    str2='$$q_x$$';
    ylabel(handles.ax_q_x,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_xdot,'reset');
    grid(handles.ax_q_xdot,'on');
    hold(handles.ax_q_xdot,'on');
    str2='$$v_x$$';
    ylabel(handles.ax_q_xdot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_x2dot,'reset');
    grid(handles.ax_q_x2dot,'on');
    hold(handles.ax_q_x2dot,'on');
    str2='$$a_x$$';
    ylabel(handles.ax_q_x2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_y,'reset');
    grid(handles.ax_q_y,'on');
    hold(handles.ax_q_y,'on');
    str2='$$q_y$$';
    ylabel(handles.ax_q_y,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_ydot,'reset');
    grid(handles.ax_q_ydot,'on');
    hold(handles.ax_q_ydot,'on');
    str2='$$v_y$$';
    ylabel(handles.ax_q_ydot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_y2dot,'reset');
    grid(handles.ax_q_y2dot,'on');
    hold(handles.ax_q_y2dot,'on');
    str2='$$a_y$$';
    ylabel(handles.ax_q_y2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_z,'reset');
    grid(handles.ax_q_z,'on');
    hold(handles.ax_q_z,'on');
    xlabel(handles.ax_q_z,'time(s)');
    str2='$$q_z$$';
    ylabel(handles.ax_q_z,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_zdot,'reset');
    grid(handles.ax_q_zdot,'on');
    hold(handles.ax_q_zdot,'on');
    xlabel(handles.ax_q_zdot,'time(s)');
    str2='$$v_z$$';
    ylabel(handles.ax_q_zdot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_q_z2dot,'reset');
    grid(handles.ax_q_z2dot,'on');
    hold(handles.ax_q_z2dot,'on');
    xlabel(handles.ax_q_z2dot,'time(s)');
    str2='$$a_z$$';
    ylabel(handles.ax_q_z2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');
%---------------------------------------------------------------------------------------------------------
    cla(handles.ax_theta1,'reset');
    grid(handles.ax_theta1,'on'); 
    hold(handles.ax_theta1,'on'); 
    str2='$$\theta_1 (Deg)$$';
    ylabel(handles.ax_theta1,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta1_dot,'reset');
    grid(handles.ax_theta1_dot,'on'); 
    hold(handles.ax_theta1_dot,'on'); 
    str2='$$\omega_1 (Deg/s)$$';
    ylabel(handles.ax_theta1_dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta1_2dot,'reset');
    grid(handles.ax_theta1_2dot,'on'); 
    hold(handles.ax_theta1_2dot,'on'); 
    str2='$$a_1 (Deg/s^2)$$';
    ylabel(handles.ax_theta1_2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');


    cla(handles.ax_theta2,'reset');
    grid(handles.ax_theta2,'on'); 
    hold(handles.ax_theta2,'on'); 
    str2='$$\theta_2(Deg)$$';
    ylabel(handles.ax_theta2,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta2_dot,'reset');
    grid(handles.ax_theta2_dot,'on'); 
    hold(handles.ax_theta2_dot,'on'); 
    str2='$$\omega_2(Deg/s)$$';
    ylabel(handles.ax_theta2_dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta2_2dot,'reset');
    grid(handles.ax_theta2_2dot,'on'); 
    hold(handles.ax_theta2_2dot,'on'); 
    str2='$$a_2(Deg/s^2)$$';
    ylabel(handles.ax_theta2_2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');      


    cla(handles.ax_d3,'reset');
    grid(handles.ax_d3,'on'); 
    hold(handles.ax_d3,'on'); 
    str2='$$d_3(m)$$';
    ylabel(handles.ax_d3,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_d3_dot,'reset');
    grid(handles.ax_d3_dot,'on'); 
    hold(handles.ax_d3_dot,'on'); 
    str2='$$v_{d_3(m/s)}$$';
    ylabel(handles.ax_d3_dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_d3_2dot,'reset');
    grid(handles.ax_d3_2dot,'on'); 
    hold(handles.ax_d3_2dot,'on'); 
    str2='$$a_{d_3(m^2/s)}$$';
    ylabel(handles.ax_d3_2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');


    cla(handles.ax_theta4,'reset');
    grid(handles.ax_theta4,'on'); 
    hold(handles.ax_theta4,'on'); 
    xlabel(handles.ax_theta4,'time(s)');
    str2='$$\theta_4(Deg)$$';
    ylabel(handles.ax_theta4,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta4_dot,'reset');
    grid(handles.ax_theta4_dot,'on'); 
    hold(handles.ax_theta4_dot,'on'); 
    xlabel(handles.ax_theta4_dot,'time(s)');
    str2='$$\omega_4(Deg/s)$$';
    ylabel(handles.ax_theta4_dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');

    cla(handles.ax_theta4_2dot,'reset');
    grid(handles.ax_theta4_2dot,'on'); 
    hold(handles.ax_theta4_2dot,'on'); 
    xlabel(handles.ax_theta4_2dot,'time(s)');
    str2='$$a_4(Deg/s^2)$$';
    ylabel(handles.ax_theta4_2dot,str2,'interpreter','latex','fontsize',13,'fontweight','bold');
end