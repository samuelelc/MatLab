% Metodo di interpolazione di Lagrange

x = [-2,1,3]
fx = [2,4,0]
lagrange_interpolation(-0.5, x, fx)

function output = lagrange_interpolation(x, x_list, fx_list)
    % variabili:
    %   - x punto in cui valutare il polinomio
    %   - x_list lista ordinata delle ascisse delle informazioni puntuali
    %   - fx_list lista ordinata delle ordinate delle informazioni puntuali
    
    % per ogni elemento di x_list calcolo il polinomio fondamentale di
    % Lagrange

    polinomio_interpolante = 0
    for index0 = 1:length(x_list)
        num = 1
        den = 1
        for index1 = 1:length(x_list)
            if index0 ~= index1
                num = num * (x-x_list(index1))
                den = den * (x_list(index0)-x_list(index1))
            end
        end
        polinomio_interpolante = polinomio_interpolante + fx_list(index0)*(num/den)
    end
end
