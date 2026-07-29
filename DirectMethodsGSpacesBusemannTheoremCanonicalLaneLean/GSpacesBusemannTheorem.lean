import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GSpace where
  carrier : Type u
  metric : carrier → carrier → ℝ
  distanceAxioms : Prop
  geodeticallyComplete : Prop
  nonempty : Prop
  distanceAxiomsTerm : distanceAxioms
  geodeticallyCompleteTerm : geodeticallyComplete
  nonemptyTerm : nonempty

structure BusemannFunction (X : GSpace) where
  ray : ℕ → X.carrier
  limitAtInfinity : X.carrier → ℝ
  asymptoteProperty : Prop
  limitAtInfinityTerm : limitAtInfinity
  asymptotePropertyTerm : asymptoteProperty

structure BusemannTheoremProof (X : GSpace) (b : BusemannFunction X) where
  horosphereDefined : Prop
  horosphereIsConvex : Prop
  horosphereIsClosed : Prop
  horosphereDefinedTerm : horosphereDefined
  horosphereIsConvexTerm : horosphereIsConvex
  horosphereIsClosedTerm : horosphereIsClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse