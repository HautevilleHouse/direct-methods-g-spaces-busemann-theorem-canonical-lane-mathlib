import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

structure BusemannAdmissibleObject where
  gspace : GSpace
  busemannFunction : BusemannFunction gspace
  theoremConclusion : Prop
  conclusion : theoremConclusion

def BusemannWitnessClosed (O : BusemannAdmissibleObject) : Prop :=
  O.theoremConclusion

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse