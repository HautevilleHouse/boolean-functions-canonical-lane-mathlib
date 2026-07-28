import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BooleanFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.propertyStatement

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.propertyClosed

end BooleanFunctionsCanonicalLaneLean
end HautevilleHouse