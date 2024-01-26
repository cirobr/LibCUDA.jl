using LibCUDA
using Test

@testset "LibCUDA.jl" begin
    @test LibCUDA.cleangpu() === nothing
end
