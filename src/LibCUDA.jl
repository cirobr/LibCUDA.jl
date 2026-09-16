module LibCUDA


import CUDA
 
function cleangpu()
    if CUDA.has_cuda_gpu()   CUDA.reclaim()   end
    GC.gc()
end


end
