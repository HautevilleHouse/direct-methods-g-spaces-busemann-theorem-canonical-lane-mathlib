import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BusemannWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DirectMethodsGSpacesBusemannTheoremCanonicalLaneLean
end HautevilleHouse