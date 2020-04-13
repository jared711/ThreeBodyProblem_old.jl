using SafeTestsets

@safetestset "orbitalelements.jl tests" begin
    include("orbitalelements_tests.jl")
end

@safetestset "conversions.jl tests" begin
    include("conversions_tests.jl")
end
