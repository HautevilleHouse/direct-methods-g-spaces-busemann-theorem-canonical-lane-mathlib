import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure HorospherePackage {X : Type u} (G : GSpace X) (B : BusemannFunction G) where
  level : ℝ
  horosphere_set : Set X
  horosphere_def : horosphere_set = {x : X | B.limit x = level}
  stability : Prop
  is_hypersurface : Prop

structure HorosphereEvidence {X : Type u} {G : GSpace X} {B : BusemannFunction G}
  (H : HorospherePackage G B) where
  stability_closed : H.stability
  is_hypersurface_closed : H.is_hypersurface

def HorosphereClosed {X : Type u} {G : GSpace X} {B : BusemannFunction G}
  (H : HorospherePackage G B) : Prop :=
  H.stability ∧ H.is_hypersurface

theorem horosphere_closed_from_evidence {X : Type u} {G : GSpace X} {B : BusemannFunction G}
  (H : HorospherePackage G B) (E : HorosphereEvidence H) : HorosphereClosed H := by
  exact And.intro E.stability_closed E.is_hypersurface_closed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse