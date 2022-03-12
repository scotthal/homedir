mkdir -p $HOME/lang/julia
curl -L https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.5-linux-x86_64.tar.gz | gzip -dc | tar -C $HOME/lang/julia -xf -
ln -s $HOME/lang/julia/julia* $HOME/lang/julia/julia
