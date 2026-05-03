using LibCUDA
using Test

@testset "LibCUDA.jl" begin
    @test LibCUDA.cleangpu() === nothing

    @test LibCUDA.garbage_collection() === nothing
    @test LibCUDA.garbage_collection(0.3) === nothing
end
