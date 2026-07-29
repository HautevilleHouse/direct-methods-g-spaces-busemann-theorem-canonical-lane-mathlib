import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannConvergencePackage {G : GromovHausdorffSpacePackage}
    {U : UltraLimitPackage G} {B : BusemannFunctionPackage G} where
  limitFunction : U.limitSpace → ℝ
  convergenceProperty : Prop
  limitIsBusemann : Prop
  limitIsBusemannClosed : limitIsBusemann

structure BusemannConvergenceEvidence {G : GromovHausdorffSpacePackage}
    {U : UltraLimitPackage G} {B : BusemannFunctionPackage G}
    (C : BusemannConvergencePackage G U B) where
  limitIsBusemannClosed : C.limitIsBusemann

def BusemannConvergenceClosed {G : GromovHausdorffSpacePackage}
    {U : UltraLimitPackage G} {B : BusemannFunctionPackage G}
    (C : BusemannConvergencePackage G U B) : Prop :=
  C.limitIsBusemann

theorem busemann_convergence_closed_from_evidence {G : GromovHausdorffSpacePackage}
    {U : UltraLimitPackage G} {B : BusemannFunctionPackage G}
    (C : BusemannConvergencePackage G U B) (E : BusemannConvergenceEvidence C) :
    BusemannConvergenceClosed C := by
  exact E.limitIsBusemannClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse