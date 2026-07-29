import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.BusemannTheoremPackage

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BoundaryClassificationPackage {G : GStructurePackage}
    {B : BusemannFunctionPackage G} (T : BusemannTheoremPackage B) where
  boundaryComponentsClassified : Prop
  busemannCocycleFixed : Prop
  endpointUniqueness : Prop

structure BoundaryClassificationEvidence {G : GStructurePackage}
    {B : BusemannFunctionPackage G} {T : BusemannTheoremPackage B}
    (C : BoundaryClassificationPackage T) where
  boundaryComponentsClassifiedClosed : C.boundaryComponentsClassified
  busemannCocycleFixedClosed : C.busemannCocycleFixed
  endpointUniquenessClosed : C.endpointUniqueness

def BoundaryClassificationClosed {G : GStructurePackage}
    {B : BusemannFunctionPackage G} {T : BusemannTheoremPackage B}
    (C : BoundaryClassificationPackage T) : Prop :=
  C.boundaryComponentsClassified ∧ C.busemannCocycleFixed ∧ C.endpointUniqueness

theorem boundary_classification_closed_from_evidence
    {G : GStructurePackage} {B : BusemannFunctionPackage G}
    {T : BusemannTheoremPackage B} (C : BoundaryClassificationPackage T)
    (E : BoundaryClassificationEvidence C) : BoundaryClassificationClosed C := by
  exact And.intro E.boundaryComponentsClassifiedClosed
    (And.intro E.busemannCocycleFixedClosed E.endpointUniquenessClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse
