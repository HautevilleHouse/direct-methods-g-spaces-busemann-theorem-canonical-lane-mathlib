import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure DirectMethodEvidence (X : GSpace) (b : BusemannFunction X) where
  stepConvergence : Prop
  stepConvergenceTerm : stepConvergence
  limitFunctionIsBusemann : Prop
  limitFunctionIsBusemannTerm : limitFunctionIsBusemann

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse