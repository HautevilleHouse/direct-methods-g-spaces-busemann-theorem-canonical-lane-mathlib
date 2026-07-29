import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure UltraLimitPackage {G : GromovHausdorffSpacePackage} where
  ultrafilter : Type u
  sequence : ℕ → G.spaceType
  limitSpace : Type v
  limitDistance : limitSpace → limitSpace → ℝ
  limitIsGromovHausdorff : Prop
  limitComplete : Prop
  limitIsGromovHausdorffClosed : limitIsGromovHausdorff
  limitCompleteClosed : limitComplete

structure UltraLimitEvidence {G : GromovHausdorffSpacePackage}
    (U : UltraLimitPackage G) where
  limitIsGromovHausdorffClosed : U.limitIsGromovHausdorff
  limitCompleteClosed : U.limitComplete

def UltraLimitClosed {G : GromovHausdorffSpacePackage}
    (U : UltraLimitPackage G) : Prop :=
  U.limitIsGromovHausdorff ∧ U.limitComplete

theorem ultra_limit_closed_from_evidence {G : GromovHausdorffSpacePackage}
    (U : UltraLimitPackage G) (E : UltraLimitEvidence U) : UltraLimitClosed U := by
  exact And.intro E.limitIsGromovHausdorffClosed E.limitCompleteClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse