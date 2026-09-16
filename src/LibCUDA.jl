module LibCUDA


import CUDA
 
function cleangpu()
    if CUDA.has_cuda_gpu()   CUDA.reclaim()   end
    GC.gc()
end


# https://discourse.julialang.org/t/garbage-collection-not-aggressive-enough-on-slurm-cluster/61649/10
function garbage_collection(threshold::Real=0.1)
    @assert (0 <= threshold <= 1) || error("threshold must be in 0:1")
    if rand() < threshold   cleangpu()   end
end


end
