function [mmr,mmm] = minimax(M)
mmr = max(M')-min(M');
ma = max(M);mi = min(M);
mmm= max(max(M'))-min(min(M'));
