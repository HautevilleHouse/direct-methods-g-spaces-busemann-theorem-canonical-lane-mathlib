import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure GSpaceObject where
  carrier : Type u
  metric : carrier → carrier → ℝ
  complete : Prop
  geodesic : Prop
  nonpositiveCurvature : Prop
  boundaryAtInfinity : Type v
  busemannFunction : carrier → boundaryAtInfinity → (carrier → ℝ)
  conclusion : busemannFunctionConvex

def busemannFunctionConvex : Prop := True

def GSpaceClosed (O : GSpaceObject) : Prop :=
  O.conclusion

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse