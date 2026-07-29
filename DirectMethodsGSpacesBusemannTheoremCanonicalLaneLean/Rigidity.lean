import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure RigidityPackage (G : GSpacePackage) (B : BusemannFunctionPackage G) (F : GradientFlowPackage G B) (S : SplittingTheoremPackage G B F) where
  nonnegativeCurvature : Prop
  busemannFunctionLinear : Prop
  spaceIsProduct : Prop

structure RigidityEvidence {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} {S : SplittingTheoremPackage G B F} (R : RigidityPackage G B F S) where
  nonnegativeCurvatureClosed : R.nonnegativeCurvature
  busemannFunctionLinearClosed : R.busemannFunctionLinear
  spaceIsProductClosed : R.spaceIsProduct

def RigidityClosed {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} {S : SplittingTheoremPackage G B F} (R : RigidityPackage G B F S) : Prop :=
  R.nonnegativeCurvature ∧ R.busemannFunctionLinear ∧ R.spaceIsProduct

theorem rigidity_closed_from_evidence {G : GSpacePackage} {B : BusemannFunctionPackage G} {F : GradientFlowPackage G B} {S : SplittingTheoremPackage G B F} (R : RigidityPackage G B F S) (E : RigidityEvidence R) : RigidityClosed R := by
  exact And.intro E.nonnegativeCurvatureClosed (And.intro E.busemannFunctionLinearClosed E.spaceIsProductClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse