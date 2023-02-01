# This is the module file

"""
     ThreeBodyProblem

ThreeBodyProblem.jl is a package for spacecraft trajectory design. It focuses mainly on the Circular Restricted Three-Body 
Problem (CR3BP), but has functionality for keplerian two-body problems and bicircular four-body problems, as well as access to 
ephemeris data through SPICE.jl. The package makes use of OrdinaryDiffEq.jl to perform numerical integrations of trajectories.
""" 
module ThreeBodyProblem

using OrdinaryDiffEq
using LinearAlgebra
using PolynomialRoots
using RecipesBase
using SPICE

include("constants.jl")
export JD, JY, AU, G

include("parameters.jl")
export  System,
        Body,
        set_system,
        sun_mercury,
        sun_venus,
        sun_earth,
        earth_moon,
        sun_mars,
        sun_jupiter,
        sun_saturn,
        sun_uranus,
        sun_neptune,
        jupiter_europa,
        saturn_enceladus,
        earth_moon_sun,
        sun_earth_moon,
        jupiter_europa_sun,
        saturn_enceladus_sun,
        SUN,
        MERCURY,
        VENUS,
        EARTH,
        MARS,
        JUPITER,
        SATURN,
        URANUS,
        NEPTUNE,
        PLUTO,
        MOON,
        PHOBOS,
        DEIMOS,
        IO,
        EUROPA,
        GANYMEDE,
        CALLISTO,
        AMALTHEA,
        MIMAS,
        ENCELADUS,
        TETHYS,
        DIONE,
        RHEA,
        TITAN,
        HYPERION,
        IAPETUS,
        PHOEBE,
        ARIEL,
        UMBRIEL,
        TITANIA,
        OBERON,
        MIRANDA,
        TRITON,
        NEREID,
        PROTEUS,
        CHARON,
        NIX,
        HYDRA,
        KERBEROS,
        STYX

include("frames.jl")
export  rot2inert!,
        rot2inert,
        inert2rot!,
        inert2rot,
        r2latlon,
        enu2ecef,
        ecef2enu,
        ecef2eci,
        eci2ecef,
        eci2sci,
        sci2eci,
        dimensionalize!,
        dimensionalize,
        nondimensionalize!,
        nondimensionalize

include("dynamics.jl")
export  R2BPdynamics!,
        R2BPdynamics,
        CR3BPdynamics!,
        CR3BPdynamics,
        CR3BPstm!,
        CR3BPstm,
        CR3BPinert!,
        CR3BPinert,
        CWdynamics!,
        CWdynamics,
        BCPdynamics!,
        BCPdynamics,
        BCPdynamics2!,
        BCPdynamics2,
        BCPstm!,
        BCPstm

include("orbitalelements.jl")
export  AP2a,
        cart2oe,
        oe2cart,
        nu2E,
        E2nu,
        E2M,
        M2E,
        azel2cart,
        cart2azel

include("util.jl")
export  computed1d2,
        computer1r2,
        computeL1,
        computeL2,
        computeL3,
        computeL4,
        computeL5,
        computeLpts,
        computeCLpts,
        computeΩ,
        computeUeff,
        computeC,
        rotx,
        rotxd,
        roty,
        rotyd,
        rotz,
        rotzd,
        rotlatlon,
        date2mjd,
        mjd2gmst,
        wrapto360,
        wrapto180,
        wrapto2pi,
        wraptopi,
        date2str,
        deserno_sphere,
        deserno_hemisphere,
        spherical_ring,
        gammaL,
        stability_index


include("plot.jl") # The plot recipes don't need to be exported, as they are automatically included when the package is loaded.
export  circle,
     #    plot_circle, # I don't like creating my own plot functions, as it removes a lot of the flexibility of Plots.jl.
     #    plot_circle!, # Instead, I will just create functions that return the data to be plotted.
        sphere,
     #    plot_sphere, # use plot(sphere(), ...) or plot!(sphere(), ...) instead
     #    plot_sphere!,
        torus
     #    plot_torus,
     #    plot_torus!,
        # seczoom,
     #    plot_prim!,
     #    plot_prim,
     #    plot_sec!,
     #    plot_sec,
     #    plot_Lpts!,
     #    plot_Lpts

include("special.jl")
export  invariant_manifolds,
        rich3,
        differential_corrector,
        differential_corrector_QPO,
        invariant_circle,
        monodromy


end # module
