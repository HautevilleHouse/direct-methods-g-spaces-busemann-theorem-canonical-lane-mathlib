import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GSpacePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  geodSpace : Prop
  alexandrovCurved : Prop
  curvatureBoundedBelow : Prop
  dimensionFinite : Prop

structure GSpaceEvidence (G : GSpacePackage) where
  geodSpaceClosed : G.geodSpace
  alexandrovCurvedClosed : G.alexandrovCurved
  curvatureBoundedBelowClosed : G.curvatureBoundedBelow
  dimensionFiniteClosed : G.dimensionFinite

def GSpaceClosed (G : GSpacePackage) : Prop :=
  G.geodSpace ∧ G.alexandrovCurved ∧ G.curvatureBoundedBelow ∧ G.dimensionFinite

theorem gspace_closed_from_evidence (G : GSpacePackage) (E : GSpaceEvidence G) : GSpaceClosed G := by
  exact And.intro E.geodSpaceClosed (And.intro E.alexandrovCurvedClosed (And.intro E.curvatureBoundedBelowClosed E.dimensionFiniteClosed))

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse