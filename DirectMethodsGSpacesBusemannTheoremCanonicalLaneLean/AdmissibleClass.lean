import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BusemannAdmittedObject where
  admitted : AdmittedObject

structure DirectMethodsGSpacesBusemannAdmissibleClass where
  admitted : BusemannAdmittedObject
  gspaceClosed : Prop
  busemannClosed : Prop
  gradientClosed : Prop
  splittingClosed : Prop
  rigidityClosed : Prop
  gspaceEvidence : gspaceClosed
  busemannEvidence : busemannClosed
  gradientEvidence : gradientClosed
  splittingEvidence : splittingClosed
  rigidityEvidence : rigidityClosed

def admittedClosure (A : DirectMethodsGSpacesBusemannAdmissibleClass) : Prop :=
  A.gspaceClosed ∧ A.busemannClosed ∧ A.gradientClosed ∧ A.splittingClosed ∧ A.rigidityClosed

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse