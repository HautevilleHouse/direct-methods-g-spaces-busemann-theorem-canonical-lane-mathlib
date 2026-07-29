import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GromovHausdorffSpacePackage where
  spaceType : Type u
  distanceFunction : spaceType → spaceType → ℝ
  metricAxioms : Prop
  complete : Prop
  proper : Prop
  metricAxiomsClosed : metricAxioms
  completeClosed : complete
  properClosed : proper

structure GromovHausdorffSpaceEvidence (G : GromovHausdorffSpacePackage) where
  metricAxiomsClosed : G.metricAxioms
  completeClosed : G.complete
  properClosed : G.proper

def GromovHausdorffSpaceClosed (G : GromovHausdorffSpacePackage) : Prop :=
  G.metricAxioms ∧ G.complete ∧ G.proper

theorem gromov_hausdorff_space_closed_from_evidence (G : GromovHausdorffSpacePackage)
    (E : GromovHausdorffSpaceEvidence G) : GromovHausdorffSpaceClosed G := by
  exact And.intro E.metricAxiomsClosed (And.intro E.completeClosed E.properClosed)

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse