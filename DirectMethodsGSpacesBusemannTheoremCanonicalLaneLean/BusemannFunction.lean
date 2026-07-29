import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannFunctionPackage (G : GSpacePackage) where
  ray : Type u
  basepoint : G.manifold
  limitDefined : Prop
  convexity : Prop
  regularity : Prop

structure BusemannFunctionEvidence {G : GSpacePackage} (B : BusemannFunctionPackage G) where
  limitDefinedClosed : B.limitDefined
  convexityClosed : B.convexity
  regularityClosed : B.regularity

def BusemannFunctionClosed {G : GSpacePackage} (B : BusemannFunctionPackage G) : Prop :=
  B.limitDefined ∧ B.convexity ∧ B.regularity

theorem busemann_function_closed_from_evidence {G : GSpacePackage} (B : BusemannFunctionPackage G) (E : BusemannFunctionEvidence B) : BusemannFunctionClosed B := by
  exact And.intro E.limitDefinedClosed (And.intro E.convexityClosed E.regularityClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse