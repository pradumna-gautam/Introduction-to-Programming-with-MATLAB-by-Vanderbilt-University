function numfreeze=freezing(w)
lowerthan_32=w(w<32);
numfreeze=numel(lowerthan_32);
end
