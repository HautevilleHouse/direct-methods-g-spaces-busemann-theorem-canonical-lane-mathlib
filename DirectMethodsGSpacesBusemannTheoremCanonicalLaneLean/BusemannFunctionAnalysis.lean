import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.GSpaceStructure
import Mathlib.Analysis.Convex.Basic

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannAnalyticPackage (O : GSpaceObject) where
  functionDefinition : O.carrier → O.boundaryAtInfinity → (O.carrier → ℝ)
  convexity : Prop
  asymptoticBehavior : Prop
  convexityProof : convexity
  asymptoticProof : asymptoticBehavior

structure BusemannAnalyticEvidence {O : GSpaceObject} (B : BusemannAnalyticPackage O) where
  convexityClosed : B.convexity
  asymptoticClosed : B.asymptoticBehavior

def BusemannAnalyticClosed {O : GSpaceObject} (B : BusemannAnalyticPackage O) : Prop :=
  B.convexity ∧ B.asymptoticBehavior

theorem busemann_analytic_closed_from_evidence
    {O : GSpaceObject} (B : BusemannAnalyticPackage O)
    (E : BusemannAnalyticEvidence B) : BusemannAnalyticClosed B := by
  exact And.intro E.convexityClosed E.asymptoticClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse