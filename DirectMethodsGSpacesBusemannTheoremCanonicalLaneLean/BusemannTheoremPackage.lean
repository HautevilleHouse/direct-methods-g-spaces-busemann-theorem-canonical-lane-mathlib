import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.BusemannFunctionPackage

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannTheoremPackage {G : GStructurePackage}
    (B : BusemannFunctionPackage G) where
  isometryGroupAction : Prop
  boundaryPointsIdentified : Prop
  theoremConclusion : Prop

structure BusemannTheoremEvidence {G : GStructurePackage}
    {B : BusemannFunctionPackage G} (T : BusemannTheoremPackage B) where
  isometryGroupActionClosed : T.isometryGroupAction
  boundaryPointsIdentifiedClosed : T.boundaryPointsIdentified
  theoremConclusionClosed : T.theoremConclusion

def BusemannTheoremClosed {G : GStructurePackage}
    {B : BusemannFunctionPackage G} (T : BusemannTheoremPackage B) : Prop :=
  T.isometryGroupAction ∧ T.boundaryPointsIdentified ∧ T.theoremConclusion

theorem busemann_theorem_closed_from_evidence
    {G : GStructurePackage} {B : BusemannFunctionPackage G}
    (T : BusemannTheoremPackage B) (E : BusemannTheoremEvidence T) :
    BusemannTheoremClosed T := by
  exact And.intro E.isometryGroupActionClosed
    (And.intro E.boundaryPointsIdentifiedClosed E.theoremConclusionClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse
