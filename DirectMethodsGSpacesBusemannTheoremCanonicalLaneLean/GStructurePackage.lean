import DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GStructurePackage where
  spaceType : Type u
  topology : TopologicalSpace spaceType
  metric : Type v
  geodesicProperty : Prop
  nonpositiveCurvature : Prop
  boundaryAtInfinity : Type w

structure GStructureEvidence (G : GStructurePackage) where
  geodesicPropertyClosed : G.geodesicProperty
  nonpositiveCurvatureClosed : G.nonpositiveCurvature

def GStructureClosed (G : GStructurePackage) : Prop :=
  G.geodesicProperty ∧ G.nonpositiveCurvature

theorem g_structure_closed_from_evidence (G : GStructurePackage) (E : GStructureEvidence G) : GStructureClosed G := by
  exact And.intro E.geodesicPropertyClosed E.nonpositiveCurvatureClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse
