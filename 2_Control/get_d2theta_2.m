function [ d2theta_2 ] = get_d2theta_2(X,u)


system_constants;



theta_0 = X(1); % Disk angle
theta_1 = X(2); % 1st rod angle
theta_2 = X(3); % 2nd rod angle
dtheta_0 = X(4); % Disk angular velocity
dtheta_1 = X(5); % 1st rod angular veloicty
dtheta_2 = X(6); % 2nd rod angular veloicty

tau = u;

t6 = theta_0+theta_1+theta_2;
t2 = cos(t6);
t8 = theta_0+theta_1;
t3 = cos(t8);
t4 = L1.^2;
t5 = r.^2;
t7 = t2.^2;
t9 = sin(t8);
t10 = sin(t6);
t11 = t3.^2;
t12 = t9.^2;
t13 = t10.^2;
t14 = sin(theta_0);
t15 = m_1.^2;
t16 = r_ee.^2;
t17 = cos(theta_0);
t18 = t14.^2;
t19 = t17.^2;
t20 = m_2.^2;
t21 = dtheta_0.^2;
t22 = dtheta_1.^2;
t23 = dtheta_2.^2;
d2theta_2 = (b.*dtheta_1.*m_0.*m_2.*t5.*t7.*4.0-b.*dtheta_2.*m_0.*m_2.*t5.*t7.*4.0+b.*dtheta_1.*m_0.*m_2.*t5.*t13.*4.0-b.*dtheta_2.*m_0.*m_2.*t5.*t13.*4.0+b.*dtheta_1.*t7.*t16.*t18.*t20.*8.0-b.*dtheta_2.*t7.*t16.*t18.*t20.*8.0+b.*dtheta_1.*t13.*t16.*t19.*t20.*8.0-b.*dtheta_2.*t13.*t16.*t19.*t20.*8.0+L1.*g.*m_0.*t3.*t5.*t13.*t20.*4.0-b.*dtheta_2.*m_0.*m_1.*t4.*t5.*t11-b.*dtheta_2.*m_0.*m_1.*t4.*t5.*t12-b.*dtheta_2.*m_0.*m_2.*t4.*t5.*t11.*4.0-b.*dtheta_2.*m_0.*m_2.*t4.*t5.*t12.*4.0+b.*dtheta_1.*m_1.*m_2.*t7.*t16.*t18.*8.0+b.*dtheta_1.*m_1.*m_2.*t7.*t16.*t19.*8.0-b.*dtheta_2.*m_1.*m_2.*t7.*t16.*t18.*8.0-b.*dtheta_2.*m_1.*m_2.*t7.*t16.*t19.*8.0+b.*dtheta_1.*m_1.*m_2.*t13.*t16.*t18.*8.0+b.*dtheta_1.*m_1.*m_2.*t13.*t16.*t19.*8.0-b.*dtheta_2.*m_1.*m_2.*t13.*t16.*t18.*8.0-b.*dtheta_2.*m_1.*m_2.*t13.*t16.*t19.*8.0+L1.*r_ee.*t7.*t9.*t14.*t20.*tau.*8.0+L1.*r_ee.*t3.*t13.*t17.*t20.*tau.*8.0-b.*dtheta_2.*t4.*t11.*t15.*t16.*t18.*2.0-b.*dtheta_2.*t4.*t12.*t15.*t16.*t19.*2.0-b.*dtheta_2.*t4.*t11.*t16.*t18.*t20.*8.0-b.*dtheta_2.*t4.*t12.*t16.*t19.*t20.*8.0-g.*m_0.*t2.*t4.*t5.*t12.*t20.*4.0-r_ee.*t2.*t4.*t12.*t17.*t20.*tau.*8.0-r_ee.*t4.*t10.*t11.*t14.*t20.*tau.*8.0+L1.*b.*dtheta_1.*m_0.*m_2.*t2.*t3.*t5.*4.0-L1.*b.*dtheta_2.*m_0.*m_2.*t2.*t3.*t5.*8.0+L1.*b.*dtheta_1.*m_0.*m_2.*t5.*t9.*t10.*4.0-L1.*b.*dtheta_2.*m_0.*m_2.*t5.*t9.*t10.*8.0-L1.*b.*dtheta_0.*r_ee.*t7.*t9.*t14.*t20.*8.0+L1.*b.*dtheta_1.*r_ee.*t7.*t9.*t14.*t20.*8.0-L1.*b.*dtheta_0.*r_ee.*t3.*t13.*t17.*t20.*8.0+L1.*b.*dtheta_1.*r_ee.*t3.*t13.*t17.*t20.*8.0+L1.*b.*dtheta_1.*t2.*t3.*t16.*t18.*t20.*8.0-L1.*b.*dtheta_2.*t2.*t3.*t16.*t18.*t20.*1.6e1+L1.*b.*dtheta_1.*t9.*t10.*t16.*t19.*t20.*8.0-L1.*b.*dtheta_2.*t9.*t10.*t16.*t19.*t20.*1.6e1+L1.*g.*m_0.*m_1.*m_2.*t3.*t5.*t7.*2.0+L1.*g.*m_0.*m_1.*m_2.*t3.*t5.*t13.*2.0-L1.*g.*m_0.*t2.*t5.*t9.*t10.*t20.*4.0+L1.*g.*m_2.*t3.*t7.*t15.*t16.*t18.*4.0+L1.*g.*m_1.*t3.*t7.*t16.*t18.*t20.*4.0+L1.*g.*m_2.*t3.*t13.*t15.*t16.*t18.*4.0+L1.*g.*m_1.*t3.*t13.*t16.*t18.*t20.*8.0+L1.*m_1.*m_2.*r_ee.*t3.*t7.*t17.*tau.*4.0+L1.*m_1.*m_2.*r_ee.*t7.*t9.*t14.*tau.*4.0+L1.*m_1.*m_2.*r_ee.*t3.*t13.*t17.*tau.*4.0+L1.*m_1.*m_2.*r_ee.*t9.*t13.*t14.*tau.*4.0-b.*dtheta_2.*m_1.*m_2.*t4.*t11.*t16.*t18.*1.0e1-b.*dtheta_2.*m_1.*m_2.*t4.*t11.*t16.*t19.*2.0-b.*dtheta_2.*m_1.*m_2.*t4.*t12.*t16.*t18.*2.0-b.*dtheta_2.*m_1.*m_2.*t4.*t12.*t16.*t19.*1.0e1+L1.*m_0.*t2.*t5.*t7.*t9.*t20.*t21.*4.0+L1.*m_0.*t2.*t5.*t7.*t9.*t20.*t22.*4.0+L1.*m_0.*t2.*t5.*t7.*t9.*t20.*t23.*4.0-L1.*m_0.*t3.*t5.*t7.*t10.*t20.*t21.*4.0-L1.*m_0.*t3.*t5.*t7.*t10.*t20.*t22.*4.0-L1.*m_0.*t3.*t5.*t7.*t10.*t20.*t23.*4.0+L1.*m_0.*t2.*t5.*t9.*t13.*t20.*t21.*4.0+L1.*m_0.*t2.*t5.*t9.*t13.*t20.*t22.*4.0+L1.*m_0.*t2.*t5.*t9.*t13.*t20.*t23.*4.0-L1.*m_0.*t3.*t5.*t10.*t13.*t20.*t21.*4.0-L1.*m_0.*t3.*t5.*t10.*t13.*t20.*t22.*4.0-L1.*m_0.*t3.*t5.*t10.*t13.*t20.*t23.*4.0-L1.*r_ee.*t2.*t3.*t10.*t14.*t20.*tau.*8.0-L1.*r_ee.*t2.*t9.*t10.*t17.*t20.*tau.*8.0+b.*dtheta_0.*r_ee.*t2.*t4.*t12.*t17.*t20.*8.0-b.*dtheta_1.*r_ee.*t2.*t4.*t12.*t17.*t20.*8.0+b.*dtheta_0.*r_ee.*t4.*t10.*t11.*t14.*t20.*8.0-b.*dtheta_1.*r_ee.*t4.*t10.*t11.*t14.*t20.*8.0-b.*dtheta_1.*t2.*t10.*t14.*t16.*t17.*t20.*1.6e1+b.*dtheta_2.*t2.*t10.*t14.*t16.*t17.*t20.*1.6e1+g.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t11-g.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t12+g.*m_0.*t3.*t4.*t5.*t9.*t10.*t20.*4.0+g.*m_2.*t2.*t4.*t11.*t15.*t16.*t18.*2.0+g.*m_1.*t2.*t4.*t11.*t16.*t18.*t20.*2.0-g.*m_1.*t2.*t4.*t12.*t16.*t18.*t20.*2.0+m_1.*m_2.*r_ee.*t2.*t4.*t11.*t17.*tau.*2.0-m_1.*m_2.*r_ee.*t2.*t4.*t12.*t17.*tau.*2.0-m_1.*m_2.*r_ee.*t4.*t10.*t11.*t14.*tau.*2.0+m_1.*m_2.*r_ee.*t4.*t10.*t12.*t14.*tau.*2.0+m_0.*t3.*t4.*t5.*t7.*t9.*t20.*t21.*8.0+m_0.*t3.*t4.*t5.*t7.*t9.*t20.*t22.*8.0+m_0.*t3.*t4.*t5.*t7.*t9.*t20.*t23.*4.0-m_0.*t2.*t4.*t5.*t10.*t11.*t20.*t21.*8.0-m_0.*t2.*t4.*t5.*t10.*t11.*t20.*t22.*8.0+m_0.*t2.*t4.*t5.*t10.*t12.*t20.*t21.*8.0-m_0.*t2.*t4.*t5.*t10.*t11.*t20.*t23.*4.0+m_0.*t2.*t4.*t5.*t10.*t12.*t20.*t22.*8.0-m_0.*t3.*t4.*t5.*t9.*t13.*t20.*t21.*8.0+m_0.*t2.*t4.*t5.*t10.*t12.*t20.*t23.*4.0-m_0.*t3.*t4.*t5.*t9.*t13.*t20.*t22.*8.0-m_0.*t3.*t4.*t5.*t9.*t13.*t20.*t23.*4.0+r_ee.*t2.*t3.*t4.*t9.*t14.*t20.*tau.*8.0+r_ee.*t3.*t4.*t9.*t10.*t17.*t20.*tau.*8.0-L1.*b.*dtheta_0.*m_1.*m_2.*r_ee.*t3.*t7.*t17.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*r_ee.*t3.*t7.*t17.*4.0-L1.*b.*dtheta_0.*m_1.*m_2.*r_ee.*t7.*t9.*t14.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*r_ee.*t7.*t9.*t14.*4.0-L1.*b.*dtheta_0.*m_1.*m_2.*r_ee.*t3.*t13.*t17.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*r_ee.*t3.*t13.*t17.*4.0-L1.*b.*dtheta_0.*m_1.*m_2.*r_ee.*t9.*t13.*t14.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*r_ee.*t9.*t13.*t14.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*t2.*t3.*t16.*t18.*8.0+L1.*b.*dtheta_1.*m_1.*m_2.*t2.*t3.*t16.*t19.*4.0-L1.*b.*dtheta_2.*m_1.*m_2.*t2.*t3.*t16.*t18.*1.6e1-L1.*b.*dtheta_2.*m_1.*m_2.*t2.*t3.*t16.*t19.*8.0+L1.*b.*dtheta_1.*m_1.*m_2.*t9.*t10.*t16.*t18.*4.0+L1.*b.*dtheta_1.*m_1.*m_2.*t9.*t10.*t16.*t19.*8.0-L1.*b.*dtheta_2.*m_1.*m_2.*t9.*t10.*t16.*t18.*8.0-L1.*b.*dtheta_2.*m_1.*m_2.*t9.*t10.*t16.*t19.*1.6e1+L1.*dtheta_0.*dtheta_1.*m_0.*t2.*t5.*t7.*t9.*t20.*8.0+L1.*dtheta_0.*dtheta_2.*m_0.*t2.*t5.*t7.*t9.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_0.*t3.*t5.*t7.*t10.*t20.*8.0+L1.*dtheta_1.*dtheta_2.*m_0.*t2.*t5.*t7.*t9.*t20.*8.0-L1.*dtheta_0.*dtheta_2.*m_0.*t3.*t5.*t7.*t10.*t20.*8.0-L1.*dtheta_1.*dtheta_2.*m_0.*t3.*t5.*t7.*t10.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_0.*t2.*t5.*t9.*t13.*t20.*8.0+L1.*dtheta_0.*dtheta_2.*m_0.*t2.*t5.*t9.*t13.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_0.*t3.*t5.*t10.*t13.*t20.*8.0+L1.*dtheta_1.*dtheta_2.*m_0.*t2.*t5.*t9.*t13.*t20.*8.0-L1.*dtheta_0.*dtheta_2.*m_0.*t3.*t5.*t10.*t13.*t20.*8.0-L1.*dtheta_1.*dtheta_2.*m_0.*t3.*t5.*t10.*t13.*t20.*8.0+L1.*b.*dtheta_0.*r_ee.*t2.*t3.*t10.*t14.*t20.*8.0-L1.*b.*dtheta_1.*r_ee.*t2.*t3.*t10.*t14.*t20.*8.0+L1.*b.*dtheta_0.*r_ee.*t2.*t9.*t10.*t17.*t20.*8.0-L1.*b.*dtheta_1.*r_ee.*t2.*t9.*t10.*t17.*t20.*8.0-L1.*b.*dtheta_1.*t2.*t9.*t14.*t16.*t17.*t20.*8.0+L1.*b.*dtheta_2.*t2.*t9.*t14.*t16.*t17.*t20.*1.6e1-L1.*b.*dtheta_1.*t3.*t10.*t14.*t16.*t17.*t20.*8.0+L1.*b.*dtheta_2.*t3.*t10.*t14.*t16.*t17.*t20.*1.6e1-L1.*g.*m_1.*t2.*t9.*t10.*t16.*t18.*t20.*4.0-L1.*g.*m_2.*t7.*t9.*t14.*t15.*t16.*t17.*4.0-L1.*g.*m_1.*t7.*t9.*t14.*t16.*t17.*t20.*8.0-L1.*g.*m_2.*t9.*t13.*t14.*t15.*t16.*t17.*4.0-L1.*g.*m_1.*t9.*t13.*t14.*t16.*t17.*t20.*4.0-b.*dtheta_0.*m_1.*m_2.*r_ee.*t2.*t4.*t11.*t17.*2.0+b.*dtheta_0.*m_1.*m_2.*r_ee.*t2.*t4.*t12.*t17.*2.0+b.*dtheta_1.*m_1.*m_2.*r_ee.*t2.*t4.*t11.*t17.*2.0-b.*dtheta_1.*m_1.*m_2.*r_ee.*t2.*t4.*t12.*t17.*2.0+b.*dtheta_0.*m_1.*m_2.*r_ee.*t4.*t10.*t11.*t14.*2.0-b.*dtheta_0.*m_1.*m_2.*r_ee.*t4.*t10.*t12.*t14.*2.0-b.*dtheta_1.*m_1.*m_2.*r_ee.*t4.*t10.*t11.*t14.*2.0+b.*dtheta_1.*m_1.*m_2.*r_ee.*t4.*t10.*t12.*t14.*2.0-L1.*m_0.*r_ee.*t3.*t5.*t13.*t14.*t20.*t21.*4.0+L1.*m_0.*r_ee.*t5.*t7.*t9.*t17.*t20.*t21.*4.0+L1.*m_0.*t2.*t4.*t5.*t9.*t11.*t20.*t21.*4.0+L1.*m_0.*t2.*t4.*t5.*t9.*t11.*t20.*t22.*4.0+L1.*m_0.*t2.*t4.*t5.*t9.*t12.*t20.*t21.*4.0+L1.*m_0.*t2.*t4.*t5.*t9.*t12.*t20.*t22.*4.0-L1.*m_0.*t3.*t4.*t5.*t10.*t11.*t20.*t21.*4.0-L1.*m_0.*t3.*t4.*t5.*t10.*t11.*t20.*t22.*4.0-L1.*m_0.*t3.*t4.*t5.*t10.*t12.*t20.*t21.*4.0-L1.*m_0.*t3.*t4.*t5.*t10.*t12.*t20.*t22.*4.0+L1.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*t21.*4.0+L1.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*t22.*4.0+L1.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*t21.*8.0+L1.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*t23.*4.0+L1.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*t22.*8.0-L1.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*t21.*8.0+L1.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*t23.*8.0-L1.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*t22.*8.0-L1.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*t21.*4.0-L1.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*t23.*8.0-L1.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*t22.*4.0-L1.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*t23.*4.0+L1.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*t21.*4.0+L1.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*t22.*4.0+L1.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*t21.*8.0+L1.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*t23.*4.0+L1.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*t22.*8.0-L1.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*t21.*8.0+L1.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*t23.*8.0-L1.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*t22.*8.0-L1.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*t21.*4.0-L1.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*t23.*8.0-L1.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*t22.*4.0-L1.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*t23.*4.0+dtheta_0.*dtheta_1.*m_0.*t3.*t4.*t5.*t7.*t9.*t20.*1.6e1+dtheta_0.*dtheta_2.*m_0.*t3.*t4.*t5.*t7.*t9.*t20.*8.0+dtheta_1.*dtheta_2.*m_0.*t3.*t4.*t5.*t7.*t9.*t20.*8.0-dtheta_0.*dtheta_1.*m_0.*t2.*t4.*t5.*t10.*t11.*t20.*1.6e1+dtheta_0.*dtheta_1.*m_0.*t2.*t4.*t5.*t10.*t12.*t20.*1.6e1-dtheta_0.*dtheta_2.*m_0.*t2.*t4.*t5.*t10.*t11.*t20.*8.0-dtheta_0.*dtheta_1.*m_0.*t3.*t4.*t5.*t9.*t13.*t20.*1.6e1+dtheta_0.*dtheta_2.*m_0.*t2.*t4.*t5.*t10.*t12.*t20.*8.0-dtheta_1.*dtheta_2.*m_0.*t2.*t4.*t5.*t10.*t11.*t20.*8.0-dtheta_0.*dtheta_2.*m_0.*t3.*t4.*t5.*t9.*t13.*t20.*8.0+dtheta_1.*dtheta_2.*m_0.*t2.*t4.*t5.*t10.*t12.*t20.*8.0-dtheta_1.*dtheta_2.*m_0.*t3.*t4.*t5.*t9.*t13.*t20.*8.0-b.*dtheta_0.*r_ee.*t2.*t3.*t4.*t9.*t14.*t20.*8.0+b.*dtheta_1.*r_ee.*t2.*t3.*t4.*t9.*t14.*t20.*8.0-b.*dtheta_0.*r_ee.*t3.*t4.*t9.*t10.*t17.*t20.*8.0+b.*dtheta_1.*r_ee.*t3.*t4.*t9.*t10.*t17.*t20.*8.0+b.*dtheta_2.*t3.*t4.*t9.*t14.*t15.*t16.*t17.*4.0+b.*dtheta_2.*t3.*t4.*t9.*t14.*t16.*t17.*t20.*1.6e1+g.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t9.*t10.*2.0+g.*m_2.*t3.*t4.*t9.*t10.*t15.*t16.*t18.*2.0+g.*m_1.*t3.*t4.*t9.*t10.*t16.*t18.*t20.*4.0-g.*m_2.*t4.*t10.*t12.*t14.*t15.*t16.*t17.*2.0+g.*m_1.*t4.*t10.*t11.*t14.*t16.*t17.*t20.*2.0-g.*m_1.*t4.*t10.*t12.*t14.*t16.*t17.*t20.*2.0+m_1.*m_2.*r_ee.*t2.*t3.*t4.*t9.*t14.*tau.*4.0+m_1.*m_2.*r_ee.*t3.*t4.*t9.*t10.*t17.*tau.*4.0+m_0.*r_ee.*t2.*t4.*t5.*t12.*t14.*t20.*t21.*4.0-m_0.*r_ee.*t4.*t5.*t10.*t11.*t17.*t20.*t21.*4.0-m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t18.*t21.*2.0-m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t18.*t22.*2.0+m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t19.*t21.*2.0+m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t19.*t22.*2.0+m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*t21.*4.0+m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*t22.*4.0+m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*t21.*1.2e1+m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*t23.*4.0+m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*t22.*1.2e1-m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t18.*t21.*2.0+m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*t23.*4.0-m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t18.*t22.*2.0+m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t19.*t21.*2.0-m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*t21.*1.0e1+m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t19.*t22.*2.0-m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*t22.*1.0e1-m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*t21.*6.0+m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*t21.*6.0-m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*t23.*6.0-m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*t22.*6.0+m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*t22.*6.0+m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*t21.*1.0e1-m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*t21.*1.2e1-m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*t23.*2.0+m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*t23.*2.0+m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*t22.*1.0e1-m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*t22.*1.2e1-m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*t21.*4.0+m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*t23.*6.0-m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*t23.*4.0-m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*t22.*4.0-m_2.*t4.*t7.*t11.*t14.*t15.*t16.*t17.*t21.*2.0-m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*t23.*4.0-m_2.*t4.*t7.*t11.*t14.*t15.*t16.*t17.*t22.*2.0+m_2.*t4.*t7.*t12.*t14.*t15.*t16.*t17.*t21.*2.0+m_2.*t4.*t7.*t12.*t14.*t15.*t16.*t17.*t22.*2.0-m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*t21.*6.0-m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*t22.*6.0+m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*t21.*2.0-m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*t23.*2.0+m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*t22.*2.0-m_2.*t4.*t11.*t13.*t14.*t15.*t16.*t17.*t21.*2.0-m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*t23.*2.0-m_2.*t4.*t11.*t13.*t14.*t15.*t16.*t17.*t22.*2.0+m_2.*t4.*t12.*t13.*t14.*t15.*t16.*t17.*t21.*2.0+m_2.*t4.*t12.*t13.*t14.*t15.*t16.*t17.*t22.*2.0-m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*t21.*2.0-m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*t22.*2.0+m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*t21.*6.0+m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*t23.*2.0+m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*t22.*6.0+m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*t23.*2.0-L1.*b.*dtheta_1.*m_1.*m_2.*t2.*t9.*t14.*t16.*t17.*4.0+L1.*b.*dtheta_2.*m_1.*m_2.*t2.*t9.*t14.*t16.*t17.*8.0-L1.*b.*dtheta_1.*m_1.*m_2.*t3.*t10.*t14.*t16.*t17.*4.0+L1.*b.*dtheta_2.*m_1.*m_2.*t3.*t10.*t14.*t16.*t17.*8.0+L1.*dtheta_0.*dtheta_1.*m_0.*t2.*t4.*t5.*t9.*t11.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_0.*t2.*t4.*t5.*t9.*t12.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_0.*t3.*t4.*t5.*t10.*t11.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_0.*t3.*t4.*t5.*t10.*t12.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*1.6e1+L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*1.6e1+L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*1.6e1+L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t7.*t9.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*8.0-L1.*dtheta_0.*dtheta_2.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*1.6e1+L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t7.*t9.*t16.*t19.*t20.*1.6e1-L1.*dtheta_0.*dtheta_2.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*8.0-L1.*dtheta_1.*dtheta_2.*m_1.*t3.*t7.*t10.*t16.*t18.*t20.*1.6e1-L1.*dtheta_1.*dtheta_2.*m_1.*t3.*t7.*t10.*t16.*t19.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*1.6e1+L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*1.6e1+L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*1.6e1+L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t9.*t13.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*8.0-L1.*dtheta_0.*dtheta_2.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*1.6e1+L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t9.*t13.*t16.*t19.*t20.*1.6e1-L1.*dtheta_0.*dtheta_2.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*8.0-L1.*dtheta_1.*dtheta_2.*m_1.*t3.*t10.*t13.*t16.*t18.*t20.*1.6e1-L1.*dtheta_1.*dtheta_2.*m_1.*t3.*t10.*t13.*t16.*t19.*t20.*8.0-L1.*m_0.*m_1.*m_2.*r_ee.*t3.*t5.*t7.*t14.*t21.*2.0-L1.*m_0.*m_1.*m_2.*r_ee.*t3.*t5.*t13.*t14.*t21.*2.0+L1.*m_0.*m_1.*m_2.*r_ee.*t5.*t7.*t9.*t17.*t21.*2.0+L1.*m_0.*m_1.*m_2.*r_ee.*t5.*t9.*t13.*t17.*t21.*2.0+L1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t11.*t21+L1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t11.*t22+L1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t12.*t21+L1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t12.*t22-L1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t11.*t21-L1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t11.*t22-L1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t12.*t21-L1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t12.*t22+L1.*g.*m_1.*t2.*t3.*t10.*t14.*t16.*t17.*t20.*4.0-b.*dtheta_0.*m_1.*m_2.*r_ee.*t2.*t3.*t4.*t9.*t14.*4.0+b.*dtheta_1.*m_1.*m_2.*r_ee.*t2.*t3.*t4.*t9.*t14.*4.0-b.*dtheta_0.*m_1.*m_2.*r_ee.*t3.*t4.*t9.*t10.*t17.*4.0+b.*dtheta_1.*m_1.*m_2.*r_ee.*t3.*t4.*t9.*t10.*t17.*4.0-L1.*m_0.*r_ee.*t2.*t3.*t5.*t10.*t17.*t20.*t21.*4.0+L1.*m_0.*r_ee.*t2.*t5.*t9.*t10.*t14.*t20.*t21.*4.0-L1.*m_2.*r_ee.*t3.*t7.*t14.*t15.*t16.*t18.*t21.*4.0-L1.*m_2.*r_ee.*t3.*t7.*t14.*t15.*t16.*t19.*t21.*4.0-L1.*m_1.*r_ee.*t3.*t7.*t14.*t16.*t18.*t20.*t21.*4.0-L1.*m_1.*r_ee.*t3.*t7.*t14.*t16.*t19.*t20.*t21.*4.0-L1.*m_2.*r_ee.*t3.*t13.*t14.*t15.*t16.*t18.*t21.*4.0-L1.*m_2.*r_ee.*t3.*t13.*t14.*t15.*t16.*t19.*t21.*4.0+L1.*m_2.*r_ee.*t7.*t9.*t15.*t16.*t17.*t18.*t21.*4.0-L1.*m_1.*r_ee.*t3.*t13.*t14.*t16.*t18.*t20.*t21.*8.0+L1.*m_2.*r_ee.*t7.*t9.*t15.*t16.*t17.*t19.*t21.*4.0-L1.*m_1.*r_ee.*t3.*t13.*t14.*t16.*t19.*t20.*t21.*8.0+L1.*m_1.*r_ee.*t7.*t9.*t16.*t17.*t18.*t20.*t21.*8.0+L1.*m_1.*r_ee.*t7.*t9.*t16.*t17.*t19.*t20.*t21.*8.0+L1.*m_2.*r_ee.*t9.*t13.*t15.*t16.*t17.*t18.*t21.*4.0+L1.*m_2.*r_ee.*t9.*t13.*t15.*t16.*t17.*t19.*t21.*4.0+L1.*m_1.*r_ee.*t9.*t13.*t16.*t17.*t18.*t20.*t21.*4.0+L1.*m_1.*r_ee.*t9.*t13.*t16.*t17.*t19.*t20.*t21.*4.0+b.*dtheta_2.*m_1.*m_2.*t3.*t4.*t9.*t14.*t16.*t17.*1.6e1+L1.*m_2.*t2.*t4.*t9.*t11.*t15.*t16.*t19.*t21+L1.*m_2.*t2.*t4.*t9.*t11.*t15.*t16.*t19.*t22+L1.*m_2.*t2.*t4.*t9.*t12.*t15.*t16.*t19.*t21-L1.*m_2.*t3.*t4.*t10.*t11.*t15.*t16.*t18.*t21-L1.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*t21.*4.0+L1.*m_2.*t2.*t4.*t9.*t12.*t15.*t16.*t19.*t22-L1.*m_2.*t3.*t4.*t10.*t11.*t15.*t16.*t18.*t22-L1.*m_2.*t3.*t4.*t10.*t12.*t15.*t16.*t18.*t21-L1.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*t22.*4.0+L1.*m_1.*t2.*t4.*t9.*t11.*t16.*t18.*t20.*t21.*2.0-L1.*m_2.*t3.*t4.*t10.*t12.*t15.*t16.*t18.*t22-L1.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*t23.*4.0+L1.*m_1.*t2.*t4.*t9.*t11.*t16.*t18.*t20.*t22.*2.0+L1.*m_1.*t2.*t4.*t9.*t11.*t16.*t19.*t20.*t21.*4.0+L1.*m_1.*t2.*t4.*t9.*t12.*t16.*t18.*t20.*t21.*2.0+L1.*m_1.*t2.*t4.*t9.*t11.*t16.*t19.*t20.*t22.*4.0+L1.*m_1.*t2.*t4.*t9.*t12.*t16.*t18.*t20.*t22.*2.0+L1.*m_1.*t2.*t4.*t9.*t12.*t16.*t19.*t20.*t21.*4.0-L1.*m_1.*t3.*t4.*t10.*t11.*t16.*t18.*t20.*t21.*4.0+L1.*m_1.*t2.*t4.*t9.*t12.*t16.*t19.*t20.*t22.*4.0-L1.*m_1.*t3.*t4.*t10.*t11.*t16.*t18.*t20.*t22.*4.0-L1.*m_1.*t3.*t4.*t10.*t11.*t16.*t19.*t20.*t21.*2.0-L1.*m_1.*t3.*t4.*t10.*t12.*t16.*t18.*t20.*t21.*4.0-L1.*m_1.*t3.*t4.*t10.*t11.*t16.*t19.*t20.*t22.*2.0-L1.*m_1.*t3.*t4.*t10.*t12.*t16.*t18.*t20.*t22.*4.0-L1.*m_1.*t3.*t4.*t10.*t12.*t16.*t19.*t20.*t21.*2.0-L1.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*t21.*4.0-L1.*m_1.*t3.*t4.*t10.*t12.*t16.*t19.*t20.*t22.*2.0-L1.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*t22.*4.0-L1.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*t23.*4.0+L1.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*t21.*4.0+L1.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*t22.*4.0+L1.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*t23.*4.0+L1.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*t21.*4.0+L1.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*t22.*4.0+L1.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*t23.*4.0-dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t18.*4.0+dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t7.*t9.*t15.*t16.*t19.*4.0+dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*8.0+dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*2.4e1+dtheta_0.*dtheta_2.*m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*8.0-dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t18.*4.0+dtheta_0.*dtheta_2.*m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*8.0+dtheta_1.*dtheta_2.*m_1.*t3.*t4.*t7.*t9.*t16.*t18.*t20.*8.0+dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t9.*t13.*t15.*t16.*t19.*4.0+dtheta_1.*dtheta_2.*m_1.*t3.*t4.*t7.*t9.*t16.*t19.*t20.*8.0-dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*2.0e1-dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*1.2e1+dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*1.2e1-dtheta_0.*dtheta_2.*m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*1.2e1+dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*2.0e1-dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*2.4e1-dtheta_0.*dtheta_2.*m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*4.0+dtheta_0.*dtheta_2.*m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*4.0-dtheta_1.*dtheta_2.*m_1.*t2.*t4.*t10.*t11.*t16.*t18.*t20.*1.2e1-dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*8.0+dtheta_0.*dtheta_2.*m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*1.2e1-dtheta_0.*dtheta_2.*m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*8.0-dtheta_1.*dtheta_2.*m_1.*t2.*t4.*t10.*t11.*t16.*t19.*t20.*4.0+dtheta_1.*dtheta_2.*m_1.*t2.*t4.*t10.*t12.*t16.*t18.*t20.*4.0-dtheta_0.*dtheta_1.*m_2.*t4.*t7.*t11.*t14.*t15.*t16.*t17.*4.0-dtheta_0.*dtheta_2.*m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*8.0+dtheta_1.*dtheta_2.*m_1.*t2.*t4.*t10.*t12.*t16.*t19.*t20.*1.2e1-dtheta_1.*dtheta_2.*m_1.*t3.*t4.*t9.*t13.*t16.*t18.*t20.*8.0+dtheta_0.*dtheta_1.*m_2.*t4.*t7.*t12.*t14.*t15.*t16.*t17.*4.0-dtheta_1.*dtheta_2.*m_1.*t3.*t4.*t9.*t13.*t16.*t19.*t20.*8.0-dtheta_0.*dtheta_1.*m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*1.2e1+dtheta_0.*dtheta_1.*m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*4.0-dtheta_0.*dtheta_2.*m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*4.0-dtheta_0.*dtheta_1.*m_2.*t4.*t11.*t13.*t14.*t15.*t16.*t17.*4.0-dtheta_0.*dtheta_2.*m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*4.0-dtheta_1.*dtheta_2.*m_1.*t4.*t7.*t11.*t14.*t16.*t17.*t20.*4.0+dtheta_0.*dtheta_1.*m_2.*t4.*t12.*t13.*t14.*t15.*t16.*t17.*4.0-dtheta_1.*dtheta_2.*m_1.*t4.*t7.*t12.*t14.*t16.*t17.*t20.*4.0-dtheta_0.*dtheta_1.*m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*4.0+dtheta_0.*dtheta_1.*m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*1.2e1+dtheta_0.*dtheta_2.*m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*4.0+dtheta_0.*dtheta_2.*m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*4.0+dtheta_1.*dtheta_2.*m_1.*t4.*t11.*t13.*t14.*t16.*t17.*t20.*4.0+dtheta_1.*dtheta_2.*m_1.*t4.*t12.*t13.*t14.*t16.*t17.*t20.*4.0-m_0.*m_1.*m_2.*r_ee.*t2.*t4.*t5.*t11.*t14.*t21+m_0.*m_1.*m_2.*r_ee.*t2.*t4.*t5.*t12.*t14.*t21-m_0.*m_1.*m_2.*r_ee.*t4.*t5.*t10.*t11.*t17.*t21+m_0.*m_1.*m_2.*r_ee.*t4.*t5.*t10.*t12.*t17.*t21-g.*m_2.*t2.*t3.*t4.*t9.*t14.*t15.*t16.*t17.*2.0-g.*m_1.*t2.*t3.*t4.*t9.*t14.*t16.*t17.*t20.*4.0+m_0.*r_ee.*t2.*t3.*t4.*t5.*t9.*t17.*t20.*t21.*4.0-m_0.*r_ee.*t3.*t4.*t5.*t9.*t10.*t14.*t20.*t21.*4.0-m_2.*r_ee.*t2.*t4.*t11.*t14.*t15.*t16.*t18.*t21.*2.0-m_2.*r_ee.*t2.*t4.*t11.*t14.*t15.*t16.*t19.*t21.*2.0-m_1.*r_ee.*t2.*t4.*t11.*t14.*t16.*t18.*t20.*t21.*2.0-m_1.*r_ee.*t2.*t4.*t11.*t14.*t16.*t19.*t20.*t21.*2.0+m_1.*r_ee.*t2.*t4.*t12.*t14.*t16.*t18.*t20.*t21.*2.0+m_1.*r_ee.*t2.*t4.*t12.*t14.*t16.*t19.*t20.*t21.*2.0+m_2.*r_ee.*t4.*t10.*t12.*t15.*t16.*t17.*t18.*t21.*2.0+m_2.*r_ee.*t4.*t10.*t12.*t15.*t16.*t17.*t19.*t21.*2.0-m_1.*r_ee.*t4.*t10.*t11.*t16.*t17.*t18.*t20.*t21.*2.0-m_1.*r_ee.*t4.*t10.*t11.*t16.*t17.*t19.*t20.*t21.*2.0+m_1.*r_ee.*t4.*t10.*t12.*t16.*t17.*t18.*t20.*t21.*2.0+m_1.*r_ee.*t4.*t10.*t12.*t16.*t17.*t19.*t20.*t21.*2.0+L1.*dtheta_0.*dtheta_1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t11.*2.0+L1.*dtheta_0.*dtheta_1.*m_0.*m_1.*m_2.*t2.*t4.*t5.*t9.*t12.*2.0-L1.*dtheta_0.*dtheta_1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t11.*2.0-L1.*dtheta_0.*dtheta_1.*m_0.*m_1.*m_2.*t3.*t4.*t5.*t10.*t12.*2.0+L1.*dtheta_0.*dtheta_1.*m_2.*t2.*t4.*t9.*t11.*t15.*t16.*t19.*2.0+L1.*dtheta_0.*dtheta_1.*m_2.*t2.*t4.*t9.*t12.*t15.*t16.*t19.*2.0-L1.*dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t10.*t11.*t15.*t16.*t18.*2.0-L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_2.*t3.*t4.*t10.*t12.*t15.*t16.*t18.*2.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t9.*t11.*t16.*t18.*t20.*4.0-L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t9.*t11.*t16.*t19.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t9.*t12.*t16.*t18.*t20.*4.0-L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t3.*t7.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t4.*t9.*t12.*t16.*t19.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t10.*t11.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t10.*t11.*t16.*t19.*t20.*4.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t10.*t12.*t16.*t18.*t20.*8.0-L1.*dtheta_0.*dtheta_1.*m_1.*t3.*t4.*t10.*t12.*t16.*t19.*t20.*4.0-L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*8.0-L1.*dtheta_0.*dtheta_2.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*8.0-L1.*dtheta_1.*dtheta_2.*m_1.*t2.*t3.*t13.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_2.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_1.*dtheta_2.*m_1.*t7.*t9.*t10.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_1.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_0.*dtheta_2.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*8.0+L1.*dtheta_1.*dtheta_2.*m_1.*t9.*t10.*t13.*t14.*t16.*t17.*t20.*8.0-L1.*m_1.*r_ee.*t2.*t3.*t10.*t16.*t17.*t18.*t20.*t21.*4.0-L1.*m_1.*r_ee.*t2.*t3.*t10.*t16.*t17.*t19.*t20.*t21.*4.0+L1.*m_1.*r_ee.*t2.*t9.*t10.*t14.*t16.*t18.*t20.*t21.*4.0+L1.*m_1.*r_ee.*t2.*t9.*t10.*t14.*t16.*t19.*t20.*t21.*4.0-L1.*m_2.*t2.*t3.*t4.*t11.*t14.*t15.*t16.*t17.*t21-L1.*m_2.*t2.*t3.*t4.*t11.*t14.*t15.*t16.*t17.*t22-L1.*m_2.*t2.*t3.*t4.*t12.*t14.*t15.*t16.*t17.*t21-L1.*m_2.*t2.*t3.*t4.*t12.*t14.*t15.*t16.*t17.*t22-L1.*m_1.*t2.*t3.*t4.*t11.*t14.*t16.*t17.*t20.*t21.*2.0-L1.*m_1.*t2.*t3.*t4.*t11.*t14.*t16.*t17.*t20.*t22.*2.0-L1.*m_1.*t2.*t3.*t4.*t12.*t14.*t16.*t17.*t20.*t21.*2.0-L1.*m_1.*t2.*t3.*t4.*t12.*t14.*t16.*t17.*t20.*t22.*2.0+L1.*m_2.*t4.*t9.*t10.*t11.*t14.*t15.*t16.*t17.*t21+L1.*m_2.*t4.*t9.*t10.*t11.*t14.*t15.*t16.*t17.*t22+L1.*m_2.*t4.*t9.*t10.*t12.*t14.*t15.*t16.*t17.*t21+L1.*m_2.*t4.*t9.*t10.*t12.*t14.*t15.*t16.*t17.*t22+L1.*m_1.*t4.*t9.*t10.*t11.*t14.*t16.*t17.*t20.*t21.*2.0+L1.*m_1.*t4.*t9.*t10.*t11.*t14.*t16.*t17.*t20.*t22.*2.0+L1.*m_1.*t4.*t9.*t10.*t12.*t14.*t16.*t17.*t20.*t21.*2.0+L1.*m_1.*t4.*t9.*t10.*t12.*t14.*t16.*t17.*t20.*t22.*2.0+m_0.*m_1.*m_2.*r_ee.*t2.*t3.*t4.*t5.*t9.*t17.*t21.*2.0-m_0.*m_1.*m_2.*r_ee.*t3.*t4.*t5.*t9.*t10.*t14.*t21.*2.0+m_2.*r_ee.*t2.*t3.*t4.*t9.*t15.*t16.*t17.*t18.*t21.*2.0+m_2.*r_ee.*t2.*t3.*t4.*t9.*t15.*t16.*t17.*t19.*t21.*2.0+m_1.*r_ee.*t2.*t3.*t4.*t9.*t16.*t17.*t18.*t20.*t21.*4.0+m_1.*r_ee.*t2.*t3.*t4.*t9.*t16.*t17.*t19.*t20.*t21.*4.0-m_2.*r_ee.*t3.*t4.*t9.*t10.*t14.*t15.*t16.*t18.*t21.*2.0-m_2.*r_ee.*t3.*t4.*t9.*t10.*t14.*t15.*t16.*t19.*t21.*2.0-m_1.*r_ee.*t3.*t4.*t9.*t10.*t14.*t16.*t18.*t20.*t21.*4.0-m_1.*r_ee.*t3.*t4.*t9.*t10.*t14.*t16.*t19.*t20.*t21.*4.0-L1.*dtheta_0.*dtheta_1.*m_2.*t2.*t3.*t4.*t11.*t14.*t15.*t16.*t17.*2.0-L1.*dtheta_0.*dtheta_1.*m_2.*t2.*t3.*t4.*t12.*t14.*t15.*t16.*t17.*2.0-L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t3.*t4.*t11.*t14.*t16.*t17.*t20.*4.0-L1.*dtheta_0.*dtheta_1.*m_1.*t2.*t3.*t4.*t12.*t14.*t16.*t17.*t20.*4.0+L1.*dtheta_0.*dtheta_1.*m_2.*t4.*t9.*t10.*t11.*t14.*t15.*t16.*t17.*2.0+L1.*dtheta_0.*dtheta_1.*m_2.*t4.*t9.*t10.*t12.*t14.*t15.*t16.*t17.*2.0+L1.*dtheta_0.*dtheta_1.*m_1.*t4.*t9.*t10.*t11.*t14.*t16.*t17.*t20.*4.0+L1.*dtheta_0.*dtheta_1.*m_1.*t4.*t9.*t10.*t12.*t14.*t16.*t17.*t20.*4.0)./(m_2.*(m_0.*m_1.*t4.*t5.*t7.*t11+m_0.*m_1.*t4.*t5.*t7.*t12+m_0.*m_2.*t4.*t5.*t7.*t12.*4.0+m_0.*m_1.*t4.*t5.*t11.*t13+m_0.*m_1.*t4.*t5.*t12.*t13+m_0.*m_2.*t4.*t5.*t11.*t13.*4.0+t4.*t7.*t11.*t15.*t16.*t18.*2.0+t4.*t7.*t12.*t15.*t16.*t19.*2.0+t4.*t11.*t13.*t15.*t16.*t18.*2.0+t4.*t12.*t13.*t15.*t16.*t19.*2.0+m_1.*m_2.*t4.*t7.*t11.*t16.*t18.*2.0+m_1.*m_2.*t4.*t7.*t12.*t16.*t18.*2.0+m_1.*m_2.*t4.*t7.*t12.*t16.*t19.*8.0+m_1.*m_2.*t4.*t11.*t13.*t16.*t18.*8.0+m_1.*m_2.*t4.*t11.*t13.*t16.*t19.*2.0+m_1.*m_2.*t4.*t12.*t13.*t16.*t19.*2.0-m_0.*m_2.*t2.*t3.*t4.*t5.*t9.*t10.*8.0-t3.*t4.*t7.*t9.*t14.*t15.*t16.*t17.*4.0-t3.*t4.*t9.*t13.*t14.*t15.*t16.*t17.*4.0-m_1.*m_2.*t2.*t3.*t4.*t9.*t10.*t16.*t18.*8.0-m_1.*m_2.*t2.*t3.*t4.*t9.*t10.*t16.*t19.*8.0-m_1.*m_2.*t3.*t4.*t7.*t9.*t14.*t16.*t17.*8.0+m_1.*m_2.*t2.*t4.*t10.*t11.*t14.*t16.*t17.*4.0+m_1.*m_2.*t2.*t4.*t10.*t12.*t14.*t16.*t17.*4.0-m_1.*m_2.*t3.*t4.*t9.*t13.*t14.*t16.*t17.*8.0));



end

