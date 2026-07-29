import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

def BusemannTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem busemann_theorem_endgame (A : AdmissibleClass) :
    BusemannTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse