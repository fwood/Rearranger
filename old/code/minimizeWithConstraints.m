function [x, fval, exitFlag]=minimizeWithConstraints(fun, x0, A, b, Aeq, beq, lb, ub, nonLinInequalityConstraint, nonLinEqualityConstraint, options)
    %import net.amani.mjc.*;

    %display('A:')
    %display(A)

    %display('b:')
    %display(b)

    % Wrap objective function
    funWrapper = @(x)fun.evaluate(x);
    
    % Wrap non-linear constraint functions
    if isempty(nonLinInequalityConstraint) && isempty(nonLinEqualityConstraint)
        nonLinConstraintWrapper = [];
    else
        if isempty(nonLinInequalityConstraint)
            nonLinInequalityConstraintWrapper = @(x)[];
        else
            nonLinInequalityConstraintWrapper = @(x)nonLinInequalityConstraint.evaluate(x);
        end

        if isempty(nonLinEqualityConstraint)
            nonLinEqualityConstraintWrapper = @(x)[];
        else
            nonLinEqualityConstraintWrapper = @(x)nonLinEqualityConstraint.evaluate(x);
        end

        % Since Java methods can only return one value, we have to create an anonymous function that calls two Java
        % methods and combines their result
        nonLinConstraintWrapper = @(x)deal(nonLinInequalityConstraintWrapper(x), nonLinEqualityConstraintWrapper(x));
    end

    % Setup configuration
    config = optimset();
    
        config = optimset(config, 'Algorithm', 'interior-point');
        config = optimset(config, 'Algorithm', 'active-set');
        config = optimset(config, 'Algorithm', 'trust-region-reflective');
    
        config = optimset(config, 'Display', 'off');
        config = optimset(config, 'Display', 'iter');
        config = optimset(config, 'Display', 'iter-detailed');
        config = optimset(config, 'Display', 'notify');
        config = optimset(config, 'Display', 'notify-detailed');
        config = optimset(config, 'Display', 'final');
        config = optimset(config, 'Display', 'final-detailed');
    
        config = optimset(config, 'MaxFunEvals', options.getMaxFunctionEvaluations());
    

        config = optimset(config, 'MaxIter', options.getMaxIterations());
    
        config = optimset(config, 'TolFun', options.getFunctionTolerance());
    
        config = optimset(config, 'TolCon', options.getConstraintViolationTolerance());
   
        config = optimset(config, 'TolX', options.getParameterTolerance());
    
    % Perform optimization
    [x, fval, exitFlag] = fmincon(funWrapper, x0, A, b, Aeq, beq, lb, ub, nonLinConstraintWrapper, config);
end
