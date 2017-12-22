function ret = cd1(rbm_w, visible_data)
% <rbm_w> is a matrix of size <number of hidden units> by <number of visible units>
% <visible_data> is a (possibly but not necessarily binary) matrix of size <number of visible units> by <number of data cases>
% The returned value is the gradient approximation produced by CD-1. It's of the same shape as <rbm_w>.

  % Question 7
  % hidden_probabilities_1 = visible_state_to_hidden_probabilities(rbm_w, visible_data);
  % hidden_sample_1 = sample_bernoulli(hidden_probabilities_1);
  % visible_probabilities_1 = hidden_state_to_visible_probabilities(rbm_w, hidden_sample_1);
  % visible_sample_1 = sample_bernoulli(visible_probabilities_1);
  % hidden_probabilities_2 = visible_state_to_hidden_probabilities(rbm_w, visible_sample_1);
  % hidden_sample_2 = sample_bernoulli(hidden_probabilities_2);

  % data_goodness = configuration_goodness_gradient(visible_data, hidden_sample_1);
  % reconstruction_goodness = configuration_goodness_gradient(visible_sample_1, hidden_sample_2);

  % ret = data_goodness - reconstruction_goodness;

  % Question 8
  % hidden_probabilities_1 = visible_state_to_hidden_probabilities(rbm_w, visible_data);
  % hidden_sample_1 = sample_bernoulli(hidden_probabilities_1);
  % visible_probabilities_1 = hidden_state_to_visible_probabilities(rbm_w, hidden_sample_1);
  % visible_sample_1 = sample_bernoulli(visible_probabilities_1);
  % hidden_probabilities_2 = visible_state_to_hidden_probabilities(rbm_w, visible_sample_1);

  % data_goodness = configuration_goodness_gradient(visible_data, hidden_sample_1);
  % reconstruction_goodness = configuration_goodness_gradient(visible_sample_1, hidden_probabilities_2);

  % ret = data_goodness - reconstruction_goodness;

  % Question 9
  visible_data = sample_bernoulli(visible_data);
  hidden_probabilities_1 = visible_state_to_hidden_probabilities(rbm_w, visible_data);
  hidden_sample_1 = sample_bernoulli(hidden_probabilities_1);
  visible_probabilities_1 = hidden_state_to_visible_probabilities(rbm_w, hidden_sample_1);
  visible_sample_1 = sample_bernoulli(visible_probabilities_1);
  hidden_probabilities_2 = visible_state_to_hidden_probabilities(rbm_w, visible_sample_1);

  data_goodness = configuration_goodness_gradient(visible_data, hidden_sample_1);
  reconstruction_goodness = configuration_goodness_gradient(visible_sample_1, hidden_probabilities_2);

  ret = data_goodness - reconstruction_goodness;

end
