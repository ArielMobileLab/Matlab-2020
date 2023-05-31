
ValAvrage = load('Avrage.mat', 'Avrage');

smAvrage = cell2mat(table2array(cell2table(struct2cell(ValAvrage))));
sm_one_line_Avrage =smAvrage(2,2000:end); 
sm_one_line_without_zero_Avrage = nonzeros(sm_one_line_Avrage');
sm_one_line_reshape_without_zero_Avrage = flipud(sm_one_line_without_zero_Avrage);
Mean_Mental_Load_Score = mean(sm_one_line_reshape_without_zero_Avrage(:,1));



