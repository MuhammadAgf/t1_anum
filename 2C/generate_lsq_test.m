function [time_hh, err_hh, time_gs, err_gs] = generate_lsq_test(m, n)  A = fix(rand(m, n)*30);  b = ones(m, 1);    tic;  x = least_square_problem_solver_householder(A, b);  time_hh = toc;  err_hh = norm(b - (A*x));    tic;  x = least_square_problem_solver_rq(A, b);  time_gs = toc;  err_gs = norm(b - (A*x));    