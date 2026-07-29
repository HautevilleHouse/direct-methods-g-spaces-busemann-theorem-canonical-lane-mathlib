import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure SplittingTheoremPackage (G : GSpacePackage) (B : BusemannFunctionPackage G) (F : GradientFlowPackage G B) where
  lineStructure : Prop
  isometricSplitting : Prop
  productMetric : Prop

structure SplittingTheoremEvidence {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} (S : SplittingTheoremPackage G B F) where
  lineStructureClosed : S.lineStructure
  isometricSplittingClosed : S.isometricSplitting
  productMetricClosed : S.productMetric

def SplittingTheoremClosed {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} (S : SplittingTheoremPackage G B F) : Prop :=
  S.lineStructure ∧ S.isometricSplitting ∧ S.productMetric

theorem splitting_theorem_closed_from_evidence {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} (S : SplittingTheoremPackage G B F) (E : SplittingTheoremEvidence S) : SplittingTheoremClosed S := by
  exact And.intro E.lineStructureClosed (And.intro E.isometricSplittingClosed E.productMetricClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse