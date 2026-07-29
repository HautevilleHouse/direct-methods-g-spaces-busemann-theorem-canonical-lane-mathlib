import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.BusemannFunctionAnalysis

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BoundaryClassificationPackage {O : GSpaceObject}
    (B : BusemannAnalyticPackage O) where
  boundaryType : Type u
  visibilityProperty : Prop
  busemannInvariant : Prop
  boundaryCompactification : Prop

structure BoundaryClassificationEvidence {O : GSpaceObject}
    {B : BusemannAnalyticPackage O} (C : BoundaryClassificationPackage B) where
  visibilityPropertyClosed : C.visibilityProperty
  busemannInvariantClosed : C.busemannInvariant
  boundaryCompactificationClosed : C.boundaryCompactification

def BoundaryClassificationClosed {O : GSpaceObject}
    {B : BusemannAnalyticPackage O} (C : BoundaryClassificationPackage B) : Prop :=
  C.visibilityProperty ∧ C.busemannInvariant ∧ C.boundaryCompactification

theorem boundary_classification_closed_from_evidence
    {O : GSpaceObject} {B : BusemannAnalyticPackage O}
    (C : BoundaryClassificationPackage B) (E : BoundaryClassificationEvidence C) :
    BoundaryClassificationClosed C := by
  exact And.intro E.visibilityPropertyClosed
    (And.intro E.busemannInvariantClosed E.boundaryCompactificationClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse