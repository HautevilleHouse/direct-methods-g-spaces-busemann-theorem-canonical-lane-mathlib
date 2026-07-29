import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.GStructurePackage

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannFunctionPackage {G : GStructurePackage} where
  ray : G.spaceType → G.spaceType → Prop
  busemannFunction : G.spaceType → G.spaceType → ℝ
  limitExists : Prop
  convexity : Prop
  asymptotic : Prop

structure BusemannFunctionEvidence {G : GStructurePackage} (B : BusemannFunctionPackage G) where
  limitExistsClosed : B.limitExists
  convexityClosed : B.convexity
  asymptoticClosed : B.asymptotic

def BusemannFunctionClosed {G : GStructurePackage} (B : BusemannFunctionPackage G) : Prop :=
  B.limitExists ∧ B.convexity ∧ B.asymptotic

theorem busemann_function_closed_from_evidence
    {G : GStructurePackage} (B : BusemannFunctionPackage G)
    (E : BusemannFunctionEvidence B) : BusemannFunctionClosed B := by
  exact And.intro E.limitExistsClosed (And.intro E.convexityClosed E.asymptoticClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse
