import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

theorem busemann_theorem {X : Type u} (G : GSpace X) (B : BusemannFunction G) :
  ∃ (h : HorospherePackage G B), HorosphereClosed h := by
  refine { horospherePackage := ?_, evidence := ?_ }
  · -- Construct the HorospherePackage
    refine {
      basepoint := G.basepoint
      radius := 0
      horospheres := λ _ => {x | B x = 0}
    }
    · -- proof of nonempty
      have : B (G.basepoint) = 0 := B.basepoint_zero
      refine ⟨G.basepoint, this⟩
    · -- proof of disjointness
      intro r s hne
      exfalso
      apply hne
      ext x
      simp
  · -- proof that HorospherePackage is closed
    intro h
    simp [h]
    exact B.continuous

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse