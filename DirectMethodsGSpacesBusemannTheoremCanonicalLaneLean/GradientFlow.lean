import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GradientFlowPackage (G : GSpacePackage) (B : BusemannFunctionPackage G) where
  flowCurve : Type u
  energyFinite : Prop
  eikonalEquation : Prop
  uniqueness : Prop

structure GradientFlowEvidence {G : GSpacePackage} {B : BusemannFunctionPackage G} (F : GradientFlowPackage G B) where
  energyFiniteClosed : F.energyFinite
  eikonalEquationClosed : F.eikonalEquation
  uniquenessClosed : F.uniqueness

def GradientFlowClosed {G : GSpacePackage} {B : BusemannFunctionPackage G} (F : GradientFlowPackage G B) : Prop :=
  F.energyFinite ∧ F.eikonalEquation ∧ F.uniqueness

theorem gradient_flow_closed_from_evidence {G : GSpacePackage} {B : BusemannFunctionPackage G} (F : GradientFlowPackage G B) (E : GradientFlowEvidence F) : GradientFlowClosed F := by
  exact And.intro E.energyFiniteClosed (And.intro E.eikonalEquationClosed E.uniquenessClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse